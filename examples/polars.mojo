from collections import Dict
from pymo.libpm import numpy, polars
from python import Python


fn main() raises:
    var np = numpy()
    var pl = polars()
    var num_rows = 5000
    var rng = np.random.default_rng(seed=7)

    var buildings_data = Python.dict()
    buildings_data["sqft"] = rng.exponential(scale=1000, size=num_rows)
    buildings_data["year"] = rng.integers(low=1995, high=2023, size=num_rows)
    buildings_data["building_type"] = rng.choice(["A", "B", "C"], size=num_rows)

    var buildings = pl.DataFrame(buildings_data)
    print(buildings)
