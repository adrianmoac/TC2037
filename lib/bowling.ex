defmodule Bowling do
  def score([]), do: 0
    def score([[10,nil|_]|[[10,_|_]|_] = others]) do
    if hd(tl(hd(others))) != 10 do
      30 + score(others)
    else
      30 + hd(tl(hd(others))) + score(others)
    end
  end
  def score([[10,nil|_c]|[[c,d|_]|_] = others]), do: 10 + c + d + score(others)
  def score([[a,b|_c]|others]) when a + b == 10, do: 10 + hd(hd(others)) + score(others)
  def score([[a,b|_c]|others]), do: a + b + score(others)
end
