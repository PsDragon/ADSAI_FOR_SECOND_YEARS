import numpy as np

#a function to calculate the difference between two quarternions
def quat_diff(q1,q2):
    q1 = q1 / np.linalg.norm(q1)
    q2 = q2 / np.linalg.norm(q2)
    q = np.dot(q1, q2)
    q = np.arccos(q)
    return q

# a function to calcuate the error between a reference and a current orientation using quarternions
def quat_error(q1,q2):
    q1 = q1 / np.linalg.norm(q1)
    q2 = q2 / np.linalg.norm(q2)
    q = np.dot(q1, q2)
    q = np.arccos(q)
    q = np.abs(q)
    return q