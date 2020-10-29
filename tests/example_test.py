import pytest

from example import add

def test_add() -> None:
  assert(add(1, 3) == 4)
