from example import add
from example import mul

def test_add() -> None:
  assert(add(1, 3) == 4)

def test_mul() -> None:
  assert(mul(2,3) == 6)    
