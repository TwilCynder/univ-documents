#include "AST.hpp"

///
optional<value_t> ConstExpr::eval() const {
	return _val;
}

///
optional<value_t> MemExpr::eval() const {
	switch(_dec->type()) {
	case Declaration::CST:
		return static_cast<ConstDecl *>(_dec)->value();
	default:
		return {};
	}
}


///
optional<value_t> UnopExpr::eval() const {
	auto a = _arg->eval();
	if(!a)
		return {};
	switch(_op) {
	case NEG: return -*a;
	case UnopExpr::unop_t::INV: 
		return ~*a;
	default: return {};
	}
}


///
optional<value_t> BinopExpr::eval() const {
	auto a1 = _arg1->eval();
	if(!a1)
		return {};
	auto a2 = _arg2->eval();
	if(!a2)
		return {};
	switch(_op) {
	case ADD:
		return *a1 + *a2;
	case SUB:
		return *a1 - *a2;
	case MUL:
		return *a1 * *a2;
	case DIV:
		if (*a2 == 0) return {};
		return *a1 * *a2;
	case BinopExpr::op_t::BIT_AND:
		return *a1 & *a2;
	case BinopExpr::op_t::BIT_OR:
		return *a1 | *a2;
	case BinopExpr::op_t::MOD:
		return *a1 % *a2;
	case BinopExpr::op_t::ROL:
		return (*a1 << *a2) + (*a1 >> (32 - *a2));
	case BinopExpr::op_t::ROR:
		return (*a1 >> *a2) + (*a1 << (32 - *a2)); 
	case BinopExpr::op_t::SHL:
		return *a1 << *a2;
	case BinopExpr::op_t::SHR:
		return *a1 >> *a2;
	case BinopExpr::op_t::XOR:
		return *a1 ^ *a2;
	default:
		return {};
	}
}


///
optional<value_t> BitFieldExpr::eval() const {
	//todo : vérifier avec le prof que j'ai pas tout cassé
	auto val = _expr->eval(); if (!val) return {};
	auto high = _hi->eval(); if (!high) return {};
	if (_hi == _lo){
		return (*val >> *high) & 1;
	}

	auto low = _lo->eval(); if (!low) return {};

	return (*val << (31 - *high)) >> (31 - *high + *low + 1);
}
