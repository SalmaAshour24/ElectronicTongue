CQU Electronic tongue(E-Tongue) dataset


Abstract: This archive contains 114 measurements from 6 chemical sensors of E-Tongue based on multifrequency large amplitude pulse voltammetry (MLAPV) in a discrimination task of 13 liquid samples at various levels of concentrations. 


Data Set Characteristics: Multivariate  
Number of instances: 114  
Area:Computer
 and Engineering
Attribute Characteristics: Real  
Number of Attributes: 12300 

Associated Tasks: Classification  



Source:
Creators: Lei Zhang (leizhang@cqu.edu.cn)

College of Communication Engineering, Chongqing University,China



Data Set Information:
  This archive contains 114 measurements from 6 chemical sensors of E-Tongue based on MLAPV in a discrimination task of 13 liquid samples at various levels of concentrations. The primary purpose of providing this dataset is to make it freely accessible on-line to the chemo-sensor research community and artificial intelligence to develop strategies to improve the performance of E-Tongue. The dataset can be used exclusively for research purposes. Commercial purposes are fully excluded.
  The dataset was gathered in a E-Tongue platform facility situated at the College of Communication Engineering, Chongqing University.
 The resulting dataset comprises recordings from 13 distinct liquid substances, including beer, red wine, white spirit, black tea, Mao Feng tea, Pu��er tea, oolong tea, coffee, milk, cola, vinegar, medicine and salt, each dosed at various concentration. The numbers after sample name represents concentration and times of experiments. For example, "beer23.txt" represents the third experiment data with second concentration of beer.
 


Attribute information:
  The system contains 6 electrode sensors, and the response of each sensor has 2050 sampling points. Each sample includes 6��2050 data points. The electrode from the 1st row to the 6th rows in each .txt file denotes the gold electrode, platinum electrode, palladium electrode, titanium electrode, tungsten electrode and silver electrode, respectively. Note that the response of the 4th electrode is invalid, therefore, not used in current work. 



Data used in this paper:
  you can find the "sample.mat" file, which contains a 114��150 data matrix X and a 114��1 label vector y. 30 informative points are selected from 12300 attributes as features in response of each sensor and 5 electrodes are used in experiments, therefore the features of each sample is 5��30=150. The values of label vector range from 1 to 13, where '1' denotes beer, '2' denotes coffee, '3' denotes milk, '4' denotes vinegar, '5' denotes black tea, '6' denotes Mao Feng tea, '7' denotes Pu��er tea, '8' denotes oolong tea, '9' denotes red wine, '10' denotes cola, '11' denotes medicine, '12' denotes salt and '13' denotes white spirit.

Feature normalization: the centralization is used for scale normalization, which is computated as y=(x-mu)/sigma. Note that "mu" is the mean value and sigma is the standard deviation.



Citation Request:

Please cite:L. Zhang, X. Wang, G. Huang, T. Liu and X. Tan, ��Local Discriminant Preservation Projection for Tastes Recognition in E-Tongue,�� IEEE Transactions on Cybernetics, submitted, 2017.