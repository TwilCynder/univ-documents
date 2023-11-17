#include "AST.hpp"
#include "Quad.hpp"

#include <assert.h>

const Quad::lab_t
	base_call = 10000,
	field_get_call = 10000,	// R0=expr, R1=high bit, R2=low bit
	field_set_call = 10001;	// R0=expr, R1=high bit, R2=low bit, R2=assigned value


///
Quad::reg_t ConstExpr::gen(QuadProgram& prog) {
	auto r = prog.newReg();
	prog.emit(Quad::seti(r, _val));
	return r;
}

///
Quad::reg_t MemExpr::gen(QuadProgram& prog) {
	switch(_dec->type()) {

	case Declaration::CST: 
		{
			auto r = prog.newReg();
			prog.emit(Quad::seti(r, static_cast<ConstDecl *>(_dec)->value()));
			return r;
		}

	case Declaration::VAR:
		return prog.regFor(static_cast<VarDecl *>(_dec)->name());

	case Declaration::REG: 
		{
			auto rd = prog.newReg();
			auto ra = prog.newReg();
			prog.emit(Quad::seti(ra, static_cast<RegDecl *>(_dec)->address()));
			prog.emit(Quad::load(rd, ra));
			return rd;
		}
	}

	assert(false);
	return 0;
}


///
Quad::reg_t UnopExpr::gen(QuadProgram& prog) {
	auto ro = _arg->gen(prog);
	auto r = prog.newReg();
	switch(_op) {
	case NEG:
		prog.emit(Quad::neg(r, ro));
		break;
	case INV:
		prog.emit(Quad::inv(r, ro));
		break;
	}
	return r;
}

using binopGenFunc_t = Quad(*)(Quad::reg_t, Quad::reg_t, Quad::reg_t);

binopGenFunc_t binopGenFuncs[] = {
	Quad::add,
	Quad::sub,
	Quad::mul,
	Quad::div,
	Quad::mod,
	Quad::and_,
	Quad::or_,
	Quad::xor_,
	Quad::shl,
	Quad::shr,
	Quad::rol,
	Quad::ror
};

///
Quad::reg_t BinopExpr::gen(QuadProgram& prog) {
	auto rd = prog.newReg();
	auto r1 = _arg1->gen(prog);
	auto r2 = _arg2->gen(prog);

	binopGenFunc_t f = binopGenFuncs[_op];
	prog.emit(f(rd, r1, r2));

	/*
	switch (_op){
		case ADD:
			prog.emit(Quad::add(rd, r1, r2));
			break;
		case SUB:
			prog.emit(Quad::sub(rd, r1, r2));
			break;
		case MUL:
			prog.emit(Quad::mul(rd, r1, r2));
			break;
		case DIV:
			prog.emit(Quad::mul(rd, r1, r2));
			break;
		case MOD:
			prog.emit(Quad::mod(rd, r1, r2));
			break;
		
	}
	*/

	return rd;
}


///
Quad::reg_t BitFieldExpr::gen(QuadProgram& prog) {

	auto e = _expr->gen(prog);
	auto u = _hi->gen(prog);
	auto l = _lo->gen(prog);

	/*
	prog.emit(Quad::set(0, e));
	prog.emit(Quad::set(1, u));
	prog.emit(Quad::set(2, l));
	//todo gérer sauvegarde des regs
	prog.emit(Quad::call(field_get_call));

	auto dest = prog.newReg();
	prog.emit(Quad::set(dest, 0));
	return dest;
	*/

	//On initalise des registres. On pourrait aussi utiliser les registres réels à condition des les sauvegarder ? (todo ?)
	//auto r0 = prog.newReg();
	//auto r1 = prog.newReg();
	//auto r2 = prog.newReg();


	if (_hi == _lo){
		prog.emit(Quad::seti(0, 1));	//r0 = 1
		prog.emit(Quad::shr(1, e, l));	//r1 = e >> l
		prog.emit(Quad::and_(1, 1, 0));	//r1 = (e >> l) & 1
	} else {
		prog.emit(Quad::seti(0, 1));	//r0 = 1
		prog.emit(Quad::shr(1, e, l));	//r1 = e >> l
		prog.emit(Quad::sub(2, u, l));	//r2 = u - l	
		prog.emit(Quad::add(2, 2, 0));	//r2 = u - l + 1
		prog.emit(Quad::shl(2, 0, 2));	//r2 = 1 << (u-l+1)
		prog.emit(Quad::sub(2, 2, 0));	//r2 = (1 << (u-l+1)) - 1
		prog.emit(Quad::and_(1, 1, 2)); //r1 = (e >> 1) & ((1 << (u-l+1)) - 1)
	}


	auto dest = prog.newReg();
	prog.emit(Quad::set(dest, 1));
	return dest;
	
	/* solution élégante qui marcherait si les expressions étaient pas passées exclusivement sous forme de pointeur
	auto expr_= BinopExpr(BinopExpr::BIT_AND, 
		BinopExpr(BinopExpr::SHR, _expr, _lo),
		BinopExpr(BinopExpr::SUB, 
			BinopExpr(BinopExpr::SHL, 
				ConstExpr(1),
				BinopExpr(BinopExpr::SUB, _hi, _lo)
			),
			ConstExpr(1)
		)
	)
	*/
}

///
void CompCond::gen(Quad::lab_t lab_true, Quad::lab_t lab_false, QuadProgram& prog) const {
	auto a1 = _arg1->gen(prog);
	auto a2 = _arg2->gen(prog);
	switch(_comp) {
	case EQ: 
		prog.emit(Quad::goto_eq(lab_true, a1, a2)); 
		prog.emit(Quad::goto_(lab_false));
		break;
	case NE: 
		prog.emit(Quad::goto_ne(lab_true, a1, a2)); 
		prog.emit(Quad::goto_(lab_false));
		break;
	case LT: 
		prog.emit(Quad::goto_lt(lab_true, a1, a2)); 
		prog.emit(Quad::goto_(lab_false));
		break;
	case LE: 
		prog.emit(Quad::goto_le(lab_true, a1, a2)); 
		prog.emit(Quad::goto_(lab_false));
		break;
	case GT: 
		prog.emit(Quad::goto_gt(lab_true, a1, a2)); 
		prog.emit(Quad::goto_(lab_false));
		break;
	case GE: 
		prog.emit(Quad::goto_ge(lab_true, a1, a2)); 
		prog.emit(Quad::goto_(lab_false));
		break;
	}
}

///
void NotCond::gen(Quad::lab_t lab_true, Quad::lab_t lab_false, QuadProgram& prog) const {
	_cond->gen(lab_false, lab_true, prog);
}

///
void AndCond::gen(Quad::lab_t lab_true, Quad::lab_t lab_false, QuadProgram& prog) const {
	Quad::lab_t lInt = prog.newLab();
	_cond1->gen(lInt, lab_false, prog);
	prog.emit(Quad::lab(lInt));
	_cond2->gen(lab_true, lab_false, prog);
}

///
void OrCond::gen(Quad::lab_t lab_true, Quad::lab_t lab_false, QuadProgram& prog) const {
	Quad::lab_t lInt = prog.newLab();
	_cond1->gen(lab_true, lInt, prog);
	prog.emit(Quad::lab(lInt));
	_cond2->gen(lab_true, lab_false, prog);
}


///
void NOPStatement::gen(AutoDecl& automaton, QuadProgram& prog) const {
}

///
void SeqStatement::gen(AutoDecl& automaton, QuadProgram& prog) const {
	_stmt1->gen(automaton, prog);
	_stmt2->gen(automaton, prog);
}

///
void IfStatement::gen(AutoDecl& automaton, QuadProgram& prog) const {
	prog.comment(pos);

	Quad::lab_t lThen = prog.newLab();
	Quad::lab_t lElse = prog.newLab();
	Quad::lab_t lEnd = prog.newLab();

	_cond->gen(lThen, lElse, prog);
	prog.emit(Quad::lab(lThen));
	_stmt1->gen(automaton, prog);
	prog.emit(Quad::goto_(lEnd));
	prog.emit(Quad::lab(lElse));
	_stmt2->gen(automaton, prog);
	prog.emit(Quad::lab(lEnd));
}

///
void SetStatement::gen(AutoDecl& automaton, QuadProgram& prog) const {
	prog.comment(pos);
	auto r = _expr->gen(prog);
	switch(_dec->type()) {
	case Declaration::VAR:
		prog.emit(Quad::set(prog.regFor(static_cast<VarDecl *>(_dec)->name()), r));
		break;
	case Declaration::REG: {
			auto ra = prog.newReg();
			prog.emit(Quad::seti(ra, static_cast<RegDecl *>(_dec)->address()));
			prog.emit(Quad::store(ra, r));
		}
		break;
	default:
		assert(false);
		break;
	}
}


///
void SetFieldStatement::gen(AutoDecl& automaton, QuadProgram& prog) const {
	prog.comment(pos);

	//todo : demander au prof comment on fait avec le sous-prog

	auto u = _hi->gen(prog);
	auto l = _lo->gen(prog);
	auto i = prog.newReg();

	switch(_dec->type()) {
	case Declaration::VAR:
		prog.emit(Quad::set(i, prog.regFor(static_cast<VarDecl *>(_dec)->name())));
		break;
	case Declaration::REG: {
			auto ra = prog.newReg();
			prog.emit(Quad::seti(ra, static_cast<RegDecl *>(_dec)->address()));
			prog.emit(Quad::load(i, ra));
		}
		break;
	default:
		assert(false);
		break;
	}

	//On initalise des registres. On pourrait aussi utiliser les registres réels à condition des les sauvegarder ? (todo ?)
	//auto r0 = prog.newReg();
	//auto r1 = prog.newReg();
	//auto r2 = prog.newReg();

	prog.emit(Quad::seti(0, 1)); //r0 = 1
	if (_hi == _lo){	

		if ( _expr->type() == Expression::CST){
			//todo ? simplification supplémentaire si l constant
			prog.emit(Quad::shl(1, 0, l));	//r1 = 1 << l
			if (static_cast<ConstExpr*>(_expr)->value() & 1 == 0){ //le & 1 peut être retiré si on ne prend pas en compte le cas où e est trop grand
				prog.emit(Quad::inv(1, 1));	//r1 = ~(1 << l);
				prog.emit(Quad::and_(0, i, 1));	//r0 = i & ~ (1 << l)
			} else {
				prog.emit(Quad::or_(0, i, 1));	//r0 = i | (1 << l)
			}

		} else {
			auto e = _expr->gen(prog);
			prog.emit(Quad::and_(1, 0, e)); //r1 = e & 1
			prog.emit(Quad::shl(1, 1, l)); 	//r1 = (e & 1) << l
			prog.emit(Quad::shl(0, 0, l));	//r0 = 1 << l = mask
			prog.emit(Quad::inv(0, 0)); 	//r0 = ~mask
			prog.emit(Quad::and_(0, i, 0));	//r0 = i & ~mask (on met le bit l à 0);
			prog.emit(Quad::or_(0, 0, 1)); 	//r0 = (i & ~mask) | (e << l)
		}
	} else {
		auto e = _expr->gen(prog);
		//mask inversé
		prog.emit(Quad::sub(1, u, l));	//r1 = u - l	
		prog.emit(Quad::add(1, 1, 0));	//r1 = u - l + 1
		prog.emit(Quad::shl(1, 0, 1));	//r1 = 1 << (u-l+1)
		prog.emit(Quad::sub(1, 1, 0));	//r1 = (1 << (u-l+1)) - 1
		prog.emit(Quad::shl(1, 1, l));	//r1 = ((1 << (u-l+1)) - 1) << l = mask
		//on tronque la valeur donnée (peut être pas besoin ?)
		prog.emit(Quad::and_(e, e, 1));
		prog.emit(Quad::inv(1, 1)); 	//r1 = ~mask
		//affectation
		prog.emit(Quad::shl(2, e, l)); 	//r2 = e << l
		prog.emit(Quad::and_(1, i, 1));	//r1 = i & ~mask
		prog.emit(Quad::or_(0, 1, 2)); 	//r0 = (i & ~mask) | (e << l)
	}

	/*
	auto e = _expr->gen(prog);
	prog.emit(Quad::set(0, e));
	prog.emit(Quad::set(1, u));
	prog.emit(Quad::set(2, l));
	prog.emit(Quad::set(3, i));
	//todo gérer sauvegarde des regs
	prog.emit(Quad::call(field_set_call));
	*/


	//r0 contient la nouvelle valeur, il nous reste à faire l'affectation pour de vrai
	switch(_dec->type()) {
	case Declaration::VAR:
		prog.emit(Quad::set(prog.regFor(static_cast<VarDecl *>(_dec)->name()), 0));
		break;
	case Declaration::REG: {
			auto ra = prog.newReg();
			prog.emit(Quad::seti(ra, static_cast<RegDecl *>(_dec)->address()));
			prog.emit(Quad::store(ra, 0));
		}
		break;
	default:
		assert(false);
		break;
	}

}

///
void GotoStatement::gen(AutoDecl& automaton, QuadProgram& prog) const {
	prog.comment(pos);
}

///
void StopStatement::gen(AutoDecl& automaton, QuadProgram& prog) const {
	prog.comment(pos);
	prog.emit(Quad::goto_(automaton.stopLabel()));
}


/**
 * Generate the code to implement a "when" directive.
 * @param automaton		Current automaton.
 * @param prog			Program to generate quadruplets in.
 */
void When::gen(AutoDecl& automaton, QuadProgram& prog) {
	prog.comment(pos);
}


/**
 * Generate the code for a state.
 * @param automaton		Current automaton.
 * @param prog			Program to generate quadruplets in.
 */
void State::gen(AutoDecl& automaton, QuadProgram& prog) {
	prog.emit(Quad::lab(_label));
	_action->gen(automaton, prog);;
	auto loop = prog.newLab();
	prog.emit(Quad::lab(loop));
	for(auto when: _whens)
		when->gen(automaton, prog);
	prog.emit(Quad::goto_(loop));
}


/**
 * Generate the code for the automatin.
 * @param prog	Program to generate in.
 */
void AutoDecl::gen(QuadProgram& prog) {
	_stop_label = prog.newLab();
	for(auto state: _states)
		state->setLabel(prog.newLab());
	_init->gen(*this, prog);
	for(auto state: _states)
		state->gen(*this, prog);
	prog.emit(Quad::lab(_stop_label));
	prog.emit(Quad::return_());
}

