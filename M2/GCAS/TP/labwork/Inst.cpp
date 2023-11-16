
#include <assert.h>
#include "Inst.hpp"

typedef enum {
	IGNORE = 0x00000,
	RECORD = 0x10000,
	EQUAL  = 0x20000,
	POW2   = 0x30000,
	ISIMM  = 0x40000,
	NOVAR  = 0x50000
} check_t;

typedef enum {
	COPY = 0x10000,
	LOG2 = 0x20000
} action_t;

typedef struct select_t {
	Quad quads[5];
	Inst insts[5];
} select_t;

inline Param pread(uint32_t x) { return Param::read(x); }
inline Param pwrite(uint32_t x) { return Param::read(x); }
inline Param pcst(uint32_t x) { return Param::cst(x); }


/**
 * @class Param
 * Parameter of a machine instruction.
 */

/**
 * Print the parameter.
 */
void Param::print(ostream& out) const {
	switch(_type) {
	case NONE:
		break;
	case CST:
		out << '#' << _val;
		break;
	case READ:
		out << "read " << Quad::reg(_val);
		break;
	case WRITE:
		out << "write " << Quad::reg(_val);
		break;
	default:
		assert(false);
		break;
	}
}


/**
 * @class Inst
 * Represents a machine instruction.
 */

/**
 * Print a machine instruction.
 */
void Inst::print(ostream& out) const {
	for(auto p = _fmt; *p != '\0'; p++) {
		if(*p != '%')
			out << *p;
		else {
			int n = (*++p) - '0';
			out << _params[n].value();
		}
	}
}


/**
 * Instruction end marker.
 */
Inst Inst::end;


// instruction selectors
select_t
	select_add = {
		{ Quad::add(RECORD|0, RECORD|1, RECORD|2) },
		{ Inst("\tadd R%0, R%1, R%2", pwrite(COPY|0), pread(COPY|1), pread(COPY|2)), Inst::end }
	},
	select_addi = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::add(RECORD|0, RECORD|1, EQUAL|2) },
		{ Inst("\tadd R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},
	select_addi2 = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::add(RECORD|0, EQUAL|2, RECORD|1) },
		{ Inst("\tadd R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},

	select_sub = {
		{ Quad::sub(RECORD|0, RECORD|1, RECORD|2) },
		{ Inst("\tadd R%0, R%1, R%2", pwrite(COPY|0), pread(COPY|1), pread(COPY|2)), Inst::end }
	},
	select_subil = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::sub(RECORD|0, EQUAL|2, RECORD|1) },
		{ Inst("\tadd R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},
	select_subir = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::sub(RECORD|0, RECORD|1, EQUAL|2) },
		{ Inst("\tadd R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},

	select_mul = {
		{ Quad::mul(RECORD|0, RECORD|1, RECORD|2) },
		{ Inst("\tmul R%0, R%1, R%2", pwrite(COPY|0), pread(COPY|1), pread(COPY|2)), Inst::end }
	},
	select_mulil = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::mul(RECORD|0, EQUAL|2, RECORD|1) },
		{ Inst("\tmul R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},
	select_mulir = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::mul(RECORD|0, RECORD|1, EQUAL|2) },
		{ Inst("\tmul R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},
	select_mulpow2l = {
		{ Quad::seti(RECORD|2, POW2|3), Quad::mul(RECORD|0, EQUAL|2, RECORD|1) },
		{ Inst("\tshl R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(LOG2|3)), Inst::end }
	},
	select_mulpow2r = {
		{ Quad::seti(RECORD|2, POW2|3), Quad::mul(RECORD|0, RECORD|1, EQUAL|2) },
		{ Inst("\tshl R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(LOG2|3)), Inst::end }
	},

	select_divpow2 = {
		{ Quad::seti(RECORD|2, POW2|3), Quad::div(RECORD|0, RECORD|1, EQUAL|2) },
		{ Inst("\tshr R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(LOG2|3)), Inst::end }
	},

	select_shl = {
		{ Quad::shl(RECORD|0, RECORD|1, RECORD|2) },
		{ Inst("\tmul R%0, R%1, R%2", pwrite(COPY|0), pread(COPY|1), pread(COPY|2)), Inst::end }
	},
	select_shlil = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::shl(RECORD|0, EQUAL|2, RECORD|1) },
		{ Inst("\tmul R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},
	select_shlir = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::shl(RECORD|0, RECORD|1, EQUAL|2) },
		{ Inst("\tmul R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},

	select_shr = {
		{ Quad::shr(RECORD|0, RECORD|1, RECORD|2) },
		{ Inst("\tmul R%0, R%1, R%2", pwrite(COPY|0), pread(COPY|1), pread(COPY|2)), Inst::end }
	},
	select_shril = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::shr(RECORD|0, EQUAL|2, RECORD|1) },
		{ Inst("\tmul R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},
	select_shrir = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::shr(RECORD|0, RECORD|1, EQUAL|2) },
		{ Inst("\tmul R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},

	select_and = {
		{ Quad::and_(RECORD|0, RECORD|1, RECORD|2) },
		{ Inst("\tand R%0, R%1, R%2", pwrite(COPY|0), pread(COPY|1), pread(COPY|2)), Inst::end }
	},
	select_andil = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::and_(RECORD|0, EQUAL|2, RECORD|1) },
		{ Inst("\tand R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},
	select_andir = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::and_(RECORD|0, RECORD|1, EQUAL|2) },
		{ Inst("\tand R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},

	select_or = {
		{ Quad::or_(RECORD|0, RECORD|1, RECORD|2) },
		{ Inst("\torr R%0, R%1, R%2", pwrite(COPY|0), pread(COPY|1), pread(COPY|2)), Inst::end }
	},
	select_oril = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::or_(RECORD|0, EQUAL|2, RECORD|1) },
		{ Inst("\torr R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},
	select_orir = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::or_(RECORD|0, RECORD|1, EQUAL|2) },
		{ Inst("\torr R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},

	select_xor = {
		{ Quad::xor_(RECORD|0, RECORD|1, RECORD|2) },
		{ Inst("\teor R%0, R%1, R%2", pwrite(COPY|0), pread(COPY|1), pread(COPY|2)), Inst::end }
	},
	select_xoril = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::xor_(RECORD|0, EQUAL|2, RECORD|1) },
		{ Inst("\teor R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},
	select_xorir = {
		{ Quad::seti(RECORD|2, ISIMM|3), Quad::xor_(RECORD|0, RECORD|1, EQUAL|2) },
		{ Inst("\teor R%0, R%1, #%2", pwrite(COPY|0), pread(COPY|1), pcst(COPY|3)), Inst::end }
	},

	select_inv = {
		{ Quad::inv(RECORD|0, RECORD|1) },
		{ Inst("\trsb R%0, R%1, #0", pwrite(COPY|0), pread(COPY|1)), Inst::end }
	},

	select_load = {
		{ Quad::load(RECORD|0, RECORD|1) },
		{ Inst("\tldr R%0, [R%1]", pwrite(COPY|0), pread(COPY|1)), Inst::end }
	},
	select_loadi = {
		{ Quad::seti(RECORD|1, ISIMM|2), Quad::load(RECORD|0, RECORD|1) },
		{ Inst("\tldr R%0, [#%1]", pwrite(COPY|0), pread(COPY|2)), Inst::end }
	},
	select_loadoffset = {
		{ Quad::add(RECORD|1, RECORD|2, RECORD|3) ,Quad::load(RECORD|0, RECORD|1) },
		{ Inst("\tldr R%0, [R%1, R%2]", pwrite(COPY|0), pread(COPY|2), pread(COPY|3)), Inst::end }
	},
	select_loadoffsetimml = {
		{ Quad::seti(RECORD|2, ISIMM|4), Quad::add(RECORD|1, EQUAL|2, RECORD|3) ,Quad::load(RECORD|0, RECORD|1) },
		{ Inst("\tldr R%0, [R%1, R%2]", pwrite(COPY|0), pread(COPY|3), pcst(COPY|4)), Inst::end }
	},
	select_loadoffsetimmr = {
		{ Quad::seti(RECORD|2, ISIMM|4), Quad::add(RECORD|1, RECORD|3, EQUAL|2) ,Quad::load(RECORD|0, RECORD|1) },
		{ Inst("\tldr R%0, [R%1, R%2]", pwrite(COPY|0), pread(COPY|3), pcst(COPY|4)), Inst::end }
	},
	select_loadoffsetshiftimml = {
		{ Quad::seti(RECORD|2, ISIMM|4), Quad::shl(RECORD|5, RECORD|6, EQUAL|2), Quad::add(RECORD|1, EQUAL|5, RECORD|3) ,Quad::load(RECORD|0, RECORD|1) },
		{ Inst("\tldr R%0, [R%1, R%2, LSL#%3]", pwrite(COPY|0), pread(COPY|3), pread(COPY|6), pcst(COPY|4)), Inst::end }
	}, //2 = #4 ; 5 = 6 << #4 ; 1 = 5 + 3 = 6 << #4 + 3 ; load 0 <- 1
	select_loadoffsetshiftimmr = {
		{ Quad::seti(RECORD|2, ISIMM|4), Quad::shl(RECORD|5, RECORD|6, EQUAL|2), Quad::add(RECORD|1, RECORD|3, EQUAL|5) ,Quad::load(RECORD|0, RECORD|1) },
		{ Inst("\tldr R%0, [R%1, R%2, LSL#%3]", pwrite(COPY|0), pread(COPY|3), pread(COPY|6), pcst(COPY|4)), Inst::end }
	}, //2 = #4 ; 5 = 6 << #4 ; 1 = 3 + 5 = 3 + 6 << #4 ; load 0 <- 1
	//maintenant on peut faire le LSR et le post-increment :D

	select_store = {
		{ Quad::store(RECORD|0, RECORD|1) },
		{ Inst("\tstr R%0, [R%1]", pread(COPY|0), pread(COPY|1)), Inst::end }
	},
	//et maintenant on refait tout pareil que pour ldr (pas besoin pour le TP)

	select_gotouseless = {
		{ Quad::goto_(RECORD|0), Quad::lab(EQUAL|0) },
		{ Inst("L%0:", pcst(COPY|0)), Inst::end }
	},

	select_gotoeqinv = {
		{ Quad::goto_eq(RECORD|0, RECORD|1, RECORD|2) },
		{  }
	},

	select_label = {
		{ Quad::lab(RECORD|0) },
		{ Inst("L%0:", pcst(COPY|0)), Inst::end }
	},
	select_goto = {
		{ Quad::goto_(RECORD|0) },
		{ Inst("goto L%0", pcst(COPY|0)), Inst::end }
	},

	select_ldreq = {
		{ Quad::seti(RECORD|0, RECORD|1) },
		{ Inst("\tldr R%0, =%1", pwrite(COPY|0), pcst(COPY|1)), Inst::end }
	},
	select_mov = {
		{ Quad::set(RECORD|0, RECORD|1) },
		{ Inst("\tmov R%0, R%1", pwrite(COPY|0), pread(COPY|1)), Inst::end }
	},
	select_movi = {
		{ Quad::seti(RECORD|0, ISIMM|1) },
		{ Inst("\tmov R%0, #%1", pwrite(COPY|0), pcst(COPY|1)), Inst::end }
	},

	select_return = {
		{ Quad::return_() },
		{ Inst("\tbx LR"), Inst::end }
	}

;

select_t *selectors[] = {
	&select_add,
	&select_addi,
	&select_addi2,
	&select_sub,
	&select_subil,
	&select_subir,
	&select_mul,
	&select_mulil,
	&select_mulir,
	&select_shl,
	&select_shlil,
	&select_shlir,
	&select_shr,
	&select_shril,
	&select_shrir,
	&select_and,
	&select_andil,
	&select_andir,
	&select_or,
	&select_oril,
	&select_orir,
	&select_inv,
	&select_load,
	&select_loadi,
	&select_loadoffsetimml,
	&select_loadoffsetimmr,
	&select_loadoffset,
	&select_loadoffsetshiftimml,
	&select_loadoffsetshiftimmr,
	&select_store,
	&select_label,
	&select_goto,
	&select_mov,
	&select_mov,
	&select_movi,
	&select_ldreq,
	&select_return,

	nullptr
};


/* useful functions */
inline check_t check(uint32_t x)
	{ return static_cast<check_t>(x & 0xffff0000); }
inline action_t action(uint32_t x)
	{ return static_cast<action_t>(x & 0xffff0000); }
inline uint32_t value(uint32_t x)
	{ return static_cast<uint32_t>(x & 0x0000ffff); }

int bitcount(int32_t v) {
	int cnt = 0;
	for(int i = 0; v && i < 32; i++, v >>= 1)
		if((i & 1) != 0)
			cnt++;
	return cnt;
}

uint32_t rightmostbit(uint32_t x) {
	for(int i = 0; i < 32; i++)
		if((i & 1) != 0)
			return i;
	return -1;
}

bool isImmediate(uint32_t x) {
	if(x == 0)
		return true;
	for(int i = 0; i < 16 && ((x & 0b11) == 0); i++, x >>= 2);
	return (x & 0xffffff00) == 0;
}


/**
 * Test of a match of an argument with a given template.
 * @param tmp	Template argument.
 * @param arg	Actual argument.
 * @param vars	Template variables.
 * @return		True if this match, false else.
 */
bool matchParam(uint32_t tmp, uint32_t arg, uint32_t vars[]) {
	switch(check(tmp)) {
	case IGNORE:
		return true;
	case POW2:
		if(bitcount(arg) != 1)
			return false;
	case RECORD:
		vars[value(tmp)] = arg;
		return true;
	case EQUAL:
		return vars[value(tmp)] == arg;
	case ISIMM:
		if(!isImmediate(arg))
			return false;
		else {
			vars[value(tmp)] = arg;
			return true;
		}
	default:
		assert(false);
		break;
	}
	return true;
}


/**
 * Test of a match of a quadruplet with a given template.
 * @param temp	Template quadruplet.
 * @param quad	Quadruplet to match with.
 * @param arg	Argument to compare with and to update.
 * @return		True if this match, false else.
 */
bool matchQuad(const Quad& temp, const Quad& quad, uint32_t vars[]) {
	return temp.type == quad.type
		&& matchParam(temp.d, quad.d, vars)
		&& matchParam(temp.a, quad.a, vars)
		&& matchParam(temp.b, quad.b, vars);
}


/**
 * Make an instruction from instruction template and variables.
 * @param temp	Instruction template.
 * @param vars	Template variable.
 * @return		Made instruction.
 */
Inst makeInst(const Inst& temp, uint32_t vars[]) {
	Inst inst = Inst(temp.format());
	for(int i = 0; i < 4 && temp[i].type() != Param::NONE; i++)
		switch(action(temp[i].value())) {
		case COPY:
			inst[i] = Param(temp[i].type(), vars[value(temp[i].value())]);
			break;
		case LOG2:
			inst[i] = Param(temp[i].type(), rightmostbit(vars[value(temp[i].value())]));
			break;
		default:
			assert(false);
			break;
		}
	return inst;
}


/**
 * Select instruction in the given sequence.
 * @param quads	List of quadruplets to select in.
 * @return		List of corresponding instructions.
 */
list<Inst> select(const list<Quad>& quads) {
	list<Inst> insts;
	uint32_t vars[16];

	// traverse all instructions
	for(auto i = quads.begin(); i != quads.end();) {
		//cerr << "DEBUG: " << *i << endl;

		// traverse all selectors
		select_t *selector = nullptr;
		auto j = i;
		for(auto s = selectors; selector == nullptr && *s != nullptr; s++) {
			j = i;
			selector = *s;
			//cerr << "DEBUG:\t\tcheck " << (*s)->insts[0].format() << endl;
			for(int x = 0; j != quads.end() && (*s)->quads[x].type != Quad::NOP; ++x, ++j)
				if(!matchQuad((*s)->quads[x], *j, vars)) {
					selector = nullptr;
					break;
				}
		}

		// apply the selector
		if(selector == nullptr) {
			cerr << "WARNING: cannot translate " << *i << endl;
			++i;
		}
		else {
			for(int x = 0; selector->insts[x].format() != nullptr; x++)
				insts.push_back(makeInst(selector->insts[x], vars));
			i = j;
		}
	}
	return insts;
}
