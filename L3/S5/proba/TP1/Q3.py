import numpy as np

m1 = np.eye(3) * 4
print(m1)

m2 = np.concatenate(
  (
    (np.eye(3) * 2),  
    np.concatenate((
      np.ones((2, 2)),
      np.zeros((1, 2))
    ))
  ), 
  axis=1
)

print(m2)