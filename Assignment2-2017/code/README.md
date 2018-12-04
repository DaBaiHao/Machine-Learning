# Assignment 2: Clustering and MoG

---

## 2. MoG Modelling using the EM Algorithm
### Task 1:
``` matlab
%% task 1
load('PB_data.mat');
J = [f1,f2];

[n,~] = size(J);

figure(1);
plot(J(:,1),J(:,2),'.');
```
The result figures:

![img](poltFigures.jpg)


### Task 2:
In the *mog.m* file, adding the code below to generate a dataset **x** that contains only the F1 and F2.
``` matlab
%% task 2
x = [f1,f2];
```

After running the *mog.m* file, the results show below:

*1. When K = 3:*

The result graph:
![img](1-1-2.jpg)

The result MoG model:

 - *mu* is a 2*3 matrix, the value is:
 ``` matlab
 [690.661838253766,	404.202156193634,	508.372658094110;
  1675.70274807955,	2456.78563231166,	1038.63235397572]
 ```
 - *p* is a 1*3 matrix, the value is:
 ``` matlab
 [0.427581620535091,	0.220953327742586,	0.351465051722323]
 ```
 - *s2* is a 2 * 2 * 3 matrix, the value is:
 ``` matlab
% 1
 val(:,:,1) =

   1.0e+05 *

    0.3941         0
         0    1.8337
% 2
 val(:,:,2) =

    1.0e+05 *

    0.1459         0
         0    1.7131
% 3
 val(:,:,3) =

    1.0e+04 *

    1.9382         0
         0    4.1103

 ```



*2. When K = 6:*

The result graph:
![img](1-1-3.jpg)

The result MoG model:
- *mu* is a 2*6 matrix, the value is:
``` matlab
[744.162028008441,	307.667803063159,	690.214938663720,	518.936700033178,	836.066392992784,	438.454558316017;
1373.23712075701,	2566.81765395673,	1088.89401151918,	1871.59270273412,	2120.55716547366,	945.419330479210]
```
- *p* is a 1*6 matrix, the value is:
``` matlab
[0.183916090407898,	0.111918038583354,	0.0784842058796250,	0.319453067282065,	0.0950378595991892,	0.211190738247869]
```
- *s2* is a 2 * 2 * 6 matrix, the value is:
``` matlab
% 1
val(:,:,1) =

   1.0e+04 *

    2.9827         0
         0    3.8874

% 2
val(:,:,2) =

   1.0e+05 *

    0.0331         0
         0    1.4648

% 3
val(:,:,3) =

   1.0e+03 *

    3.5675         0
         0    8.6133

% 4
val(:,:,4) =

   1.0e+05 *

    0.0878         0
         0    2.8551

% 5
val(:,:,5) =

   1.0e+05 *

    0.3662         0
         0    1.0893

% 6
val(:,:,6) =

   1.0e+04 *

    1.1697         0
         0    2.8179
```



*3. Repeat, K = 6:*

The result graph:
![img](1-1-4.jpg)

The result MoG model:
- *mu* is a 2*6 matrix, the value is:
``` matlab
[776.897194405139,	397.623176012133,	708.461729660163,	534.918753062421,	423.669314996141,	315.893562022206;
1838.58569832185,	2466.08602663912,	1157.92070808377,	1369.24556245440,	1055.76867779168,	838.149393127401]
```
- *p* is a 1*6 matrix, the value is:
``` matlab
[0.221871265872818,	0.220945634122274,	0.157836856896736,	0.254923674400326,	0.0859941755458271,	0.0584283931620178]
```
- *s2* is a 2 * 2 * 6 matrix, the value is:
``` matlab
val(:,:,1) =

   1.0e+05 *

    0.3916         0
         0    1.9103


val(:,:,2) =

   1.0e+05 *

    0.1415         0
         0    1.5825


val(:,:,3) =

   1.0e+04 *

    1.1470         0
         0    2.3938


val(:,:,4) =

   1.0e+05 *

    0.0599         0
         0    1.5510


val(:,:,5) =

   1.0e+04 *

    0.2472         0
         0    2.6469


val(:,:,6) =

   1.0e+04 *

    0.2379         0
         0    1.7158

```
