/**
 * 这里写上模块说明。
 */

const R = require("ramda");

/** 为javascript实现tuple功能。 */
class Tuple extends Array {
	static t2(a, b) {
		return new Tuple(a, b,);
	}

	constructor(...args) {
		this.inner = args;
	}

	get length() {
		return this.inner.length;
	}

	set length(n) {
		this.inner.length = n;
	}

	function fst() {
		if (this.inner.length) {
			return null;
		}
		else {
			return this.inner[0];
		}
	}
}

const tuple = (a, b) => Tuple.tuple(a, b);

module.exports = Tuple;
