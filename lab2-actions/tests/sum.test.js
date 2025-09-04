import { strict as assert } from 'node:assert';
import test from 'node:test';
import { sum } from '../src/sum.js';

test('adds 2 + 2 = 4', () => {
  assert.equal(sum(2,2), 4);
});

test('throws on non-numbers', () => {
  assert.throws(() => sum('2', 2), /numbers required/);
});
