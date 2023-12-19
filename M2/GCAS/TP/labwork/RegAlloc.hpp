#ifndef IOC_REGALLOC_HPP
#define IOC_REGALLOC_HPP

#include <list>
#include <map>
using namespace std;

#include "Inst.hpp"
#include "Quad.hpp"

class StackMapper {
public:
	StackMapper();
	void add(Quad::reg_t reg);
	int32_t offsetOf(Quad::reg_t reg);
	void markGlobal();
	bool isGlobal(Quad::reg_t reg);
	void rewind();
private:
	int32_t _offset, _global;
	map<Quad::reg_t, int32_t> _offsets;
};

class RegMap {
	public:
	RegMap();
	Quad::reg_t& operator[](const Quad::reg_t);
	
	using _BaseMap = map<Quad::reg_t, Quad::reg_t>;
	using iterator = _BaseMap::iterator;
	void add(Quad::reg_t v, Quad::reg_t h);
	bool empty() const;
	const _BaseMap::const_iterator end() const;
	iterator find(const Quad::reg_t reg);
	Quad::reg_t get(const Quad::reg_t reg);
	void erase(const Quad::reg_t reg);
	void erase(_BaseMap::const_iterator);
	Quad::reg_t pop(const Quad::reg_t reg);

	private:
	_BaseMap _map;
	list<Quad::reg_t> allocQ;
	void eraseFromQ(Quad::reg_t vreg);
};

class RegAlloc {
public:
	RegAlloc(StackMapper& mapper, list<Inst>& insts);
	void process(Inst inst);
	void complete();
private:
	void processRead(Param& param);
	void processWrite(Param& param);
	Quad::reg_t allocate(Quad::reg_t reg);
	Quad::reg_t allocateForRead(Quad::reg_t reg);
	void spill(Quad::reg_t reg);
	void free(Quad::reg_t reg);
	void free(RegMap::iterator);
	void store(Quad::reg_t reg);
	void load(Quad::reg_t reg);
	bool isVar(Quad::reg_t reg) const;

	RegMap _map;
	list<Quad::reg_t> _written;
	list<Quad::reg_t> _avail;
	StackMapper& _mapper;
	list<Inst>& _insts;
	list<Quad::reg_t> _fried;
};

#endif	// IOC_REGALLOC_HPP
