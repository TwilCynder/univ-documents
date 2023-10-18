#include "AST.hpp"

/****** Reduce for expressions ******/

Expression *ConstExpr::reduce() {
	return this;
}

Expression *MemExpr::reduce() {
	if(_dec->type() != Declaration::CST)
		return this;
	else
		return new ConstExpr(static_cast<ConstDecl *>(_dec)->value());
}


Expression *UnopExpr::reduce() {
	_arg = _arg->reduce();
	if(_arg->type() == CST)
		return new ConstExpr(*eval());
	else
		return this;
}

Expression *BinopExpr::reduce() {
	std::cout << "REDUCE BINOP\n";
	_arg1 = _arg1->reduce();
	_arg2 = _arg2->reduce();

	if (_arg1->type() == CST && _arg2->type() == CST){
		return new ConstExpr(*eval());
	} else {
		return this;
	}	
} 

Expression *BitFieldExpr::reduce() {
	_hi = _hi->reduce();
	if (_lo != _hi)
		_lo = _lo->reduce();
	_expr = _expr->reduce();

	if (_hi->type() == CST && _lo->type() == CST && _expr->type() == CST){
		return new ConstExpr(*eval());
	} else {
		return this;
	}
}


/****** reduce for statements ******/

void NOPStatement::reduce() {
}

void SeqStatement::reduce() {
	_stmt1->reduce();
	_stmt2->reduce();
}

void SetStatement::reduce() {
	_expr = _expr->reduce();
}

void SetFieldStatement::reduce() {
	_hi = _hi->reduce();
	_lo = _lo->reduce();	
	_expr = _expr->reduce();
}

void IfStatement::reduce() {
	_cond->reduce();
}

void GotoStatement::reduce() {
	_state->reduce();
}

void StopStatement::reduce() {
}


/****** Reduction for conditions ******/

void CompCond::reduce() {
	_arg1 = _arg1->reduce();
	_arg2 = _arg2->reduce();
}

void NotCond::reduce() {
	_cond->reduce();
}

void BinCond::reduce() {
	_cond1->reduce();
	_cond2->reduce();
}


