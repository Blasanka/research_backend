▒Ш
ю╛
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
╛
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718УМ

Д
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:@*
dtype0
Д
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
:@ *
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
: *
dtype0
Д
conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:@*
dtype0
Д
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_22/kernel
}
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_22/bias
m
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes
:@*
dtype0
|
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АЇ* 
shared_namedense_21/kernel
u
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel* 
_output_shapes
:
АЇ*
dtype0
s
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ї*
shared_namedense_21/bias
l
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes	
:Ї*
dtype0
{
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Їd* 
shared_namedense_22/kernel
t
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes
:	Їd*
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
:d*
dtype0
z
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_23/kernel
s
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes

:d*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Т
Adam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_19/kernel/m
Л
+Adam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/m*&
_output_shapes
:@*
dtype0
В
Adam/conv2d_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_19/bias/m
{
)Adam/conv2d_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_20/kernel/m
Л
+Adam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/m*&
_output_shapes
:@ *
dtype0
В
Adam/conv2d_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_20/bias/m
{
)Adam/conv2d_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/m*
_output_shapes
: *
dtype0
Т
Adam/conv2d_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_21/kernel/m
Л
+Adam/conv2d_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/m*&
_output_shapes
: @*
dtype0
В
Adam/conv2d_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_21/bias/m
{
)Adam/conv2d_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_22/kernel/m
Л
+Adam/conv2d_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_22/bias/m
{
)Adam/conv2d_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/m*
_output_shapes
:@*
dtype0
К
Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АЇ*'
shared_nameAdam/dense_21/kernel/m
Г
*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m* 
_output_shapes
:
АЇ*
dtype0
Б
Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ї*%
shared_nameAdam/dense_21/bias/m
z
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes	
:Ї*
dtype0
Й
Adam/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Їd*'
shared_nameAdam/dense_22/kernel/m
В
*Adam/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/m*
_output_shapes
:	Їd*
dtype0
А
Adam/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_22/bias/m
y
(Adam/dense_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/m*
_output_shapes
:d*
dtype0
И
Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_23/kernel/m
Б
*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m*
_output_shapes

:d*
dtype0
А
Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/m
y
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_19/kernel/v
Л
+Adam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/v*&
_output_shapes
:@*
dtype0
В
Adam/conv2d_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_19/bias/v
{
)Adam/conv2d_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_20/kernel/v
Л
+Adam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/v*&
_output_shapes
:@ *
dtype0
В
Adam/conv2d_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_20/bias/v
{
)Adam/conv2d_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/v*
_output_shapes
: *
dtype0
Т
Adam/conv2d_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_21/kernel/v
Л
+Adam/conv2d_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/v*&
_output_shapes
: @*
dtype0
В
Adam/conv2d_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_21/bias/v
{
)Adam/conv2d_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_22/kernel/v
Л
+Adam/conv2d_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_22/bias/v
{
)Adam/conv2d_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/v*
_output_shapes
:@*
dtype0
К
Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АЇ*'
shared_nameAdam/dense_21/kernel/v
Г
*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v* 
_output_shapes
:
АЇ*
dtype0
Б
Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ї*%
shared_nameAdam/dense_21/bias/v
z
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes	
:Ї*
dtype0
Й
Adam/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Їd*'
shared_nameAdam/dense_22/kernel/v
В
*Adam/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/v*
_output_shapes
:	Їd*
dtype0
А
Adam/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_22/bias/v
y
(Adam/dense_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/v*
_output_shapes
:d*
dtype0
И
Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_23/kernel/v
Б
*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v*
_output_shapes

:d*
dtype0
А
Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/v
y
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
аR
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*█Q
value╤QB╬Q B╟Q
╖
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
 	variables
!	keras_api
R
"trainable_variables
#regularization_losses
$	variables
%	keras_api
h

&kernel
'bias
(trainable_variables
)regularization_losses
*	variables
+	keras_api
R
,trainable_variables
-regularization_losses
.	variables
/	keras_api
h

0kernel
1bias
2trainable_variables
3regularization_losses
4	variables
5	keras_api
R
6trainable_variables
7regularization_losses
8	variables
9	keras_api
h

:kernel
;bias
<trainable_variables
=regularization_losses
>	variables
?	keras_api
h

@kernel
Abias
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
h

Fkernel
Gbias
Htrainable_variables
Iregularization_losses
J	variables
K	keras_api
╪
Liter

Mbeta_1

Nbeta_2
	Odecay
Plearning_ratemШmЩmЪmЫ&mЬ'mЭ0mЮ1mЯ:mа;mб@mвAmгFmдGmеvжvзvиvй&vк'vл0vм1vн:vо;vп@v░Av▒Fv▓Gv│
f
0
1
2
3
&4
'5
06
17
:8
;9
@10
A11
F12
G13
 
f
0
1
2
3
&4
'5
06
17
:8
;9
@10
A11
F12
G13
н
Qmetrics
trainable_variables
regularization_losses
Rlayer_metrics

Slayers
Tnon_trainable_variables
	variables
Ulayer_regularization_losses
 
\Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н
Vmetrics
trainable_variables
Wlayer_metrics
regularization_losses

Xlayers
Ynon_trainable_variables
	variables
Zlayer_regularization_losses
 
 
 
н
[metrics
trainable_variables
\layer_metrics
regularization_losses

]layers
^non_trainable_variables
	variables
_layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н
`metrics
trainable_variables
alayer_metrics
regularization_losses

blayers
cnon_trainable_variables
 	variables
dlayer_regularization_losses
 
 
 
н
emetrics
"trainable_variables
flayer_metrics
#regularization_losses

glayers
hnon_trainable_variables
$	variables
ilayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

&0
'1
 

&0
'1
н
jmetrics
(trainable_variables
klayer_metrics
)regularization_losses

llayers
mnon_trainable_variables
*	variables
nlayer_regularization_losses
 
 
 
н
ometrics
,trainable_variables
player_metrics
-regularization_losses

qlayers
rnon_trainable_variables
.	variables
slayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11
 

00
11
н
tmetrics
2trainable_variables
ulayer_metrics
3regularization_losses

vlayers
wnon_trainable_variables
4	variables
xlayer_regularization_losses
 
 
 
н
ymetrics
6trainable_variables
zlayer_metrics
7regularization_losses

{layers
|non_trainable_variables
8	variables
}layer_regularization_losses
[Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1
 

:0
;1
░
~metrics
<trainable_variables
layer_metrics
=regularization_losses
Аlayers
Бnon_trainable_variables
>	variables
 Вlayer_regularization_losses
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1
 

@0
A1
▓
Гmetrics
Btrainable_variables
Дlayer_metrics
Cregularization_losses
Еlayers
Жnon_trainable_variables
D	variables
 Зlayer_regularization_losses
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

F0
G1
 

F0
G1
▓
Иmetrics
Htrainable_variables
Йlayer_metrics
Iregularization_losses
Кlayers
Лnon_trainable_variables
J	variables
 Мlayer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

Н0
О1
 
N
0
1
2
3
4
5
6
7
	8

9
10
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Пtotal

Рcount
С	variables
Т	keras_api
I

Уtotal

Фcount
Х
_fn_kwargs
Ц	variables
Ч	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

П0
Р1

С	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

У0
Ф1

Ц	variables
}
VARIABLE_VALUEAdam/conv2d_19/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_19/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_20/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_20/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_21/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_21/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_22/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_22/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_19/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_19/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_20/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_20/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_21/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_21/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_22/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_22/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Т
serving_default_conv2d_19_inputPlaceholder*/
_output_shapes
:         @@*
dtype0*$
shape:         @@
╛
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_19_inputconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasdense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_168071
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
z
StaticRegexFullMatchStaticRegexFullMatchsaver_filename"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
\
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
a
Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
h
SelectSelectStaticRegexFullMatchConst_1Const_2"/device:CPU:**
T0*
_output_shapes
: 
`

StringJoin
StringJoinsaver_filenameSelect"/device:CPU:**
N*
_output_shapes
: 
L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
x
ShardedFilenameShardedFilename
StringJoinShardedFilename/shard
num_shards"/device:CPU:0*
_output_shapes
: 
▌
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*Ж
value№B∙4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
╒
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ж
SaveV2SaveV2ShardedFilenameSaveV2/tensor_namesSaveV2/shape_and_slices$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_19/kernel/m/Read/ReadVariableOp)Adam/conv2d_19/bias/m/Read/ReadVariableOp+Adam/conv2d_20/kernel/m/Read/ReadVariableOp)Adam/conv2d_20/bias/m/Read/ReadVariableOp+Adam/conv2d_21/kernel/m/Read/ReadVariableOp)Adam/conv2d_21/bias/m/Read/ReadVariableOp+Adam/conv2d_22/kernel/m/Read/ReadVariableOp)Adam/conv2d_22/bias/m/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOp*Adam/dense_22/kernel/m/Read/ReadVariableOp(Adam/dense_22/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp+Adam/conv2d_19/kernel/v/Read/ReadVariableOp)Adam/conv2d_19/bias/v/Read/ReadVariableOp+Adam/conv2d_20/kernel/v/Read/ReadVariableOp)Adam/conv2d_20/bias/v/Read/ReadVariableOp+Adam/conv2d_21/kernel/v/Read/ReadVariableOp)Adam/conv2d_21/bias/v/Read/ReadVariableOp+Adam/conv2d_22/kernel/v/Read/ReadVariableOp)Adam/conv2d_22/bias/v/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOp*Adam/dense_22/kernel/v/Read/ReadVariableOp(Adam/dense_22/bias/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOpConst"/device:CPU:0*B
dtypes8
624	
Е
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
o
MergeV2CheckpointsMergeV2Checkpoints&MergeV2Checkpoints/checkpoint_prefixessaver_filename"/device:CPU:0
i
IdentityIdentitysaver_filename^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
р
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*Ж
value№B∙4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
╪
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ц
	RestoreV2	RestoreV2saver_filenameRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*ц
_output_shapes╙
╨::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	
S

Identity_1Identity	RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOpAssignVariableOpconv2d_19/kernel
Identity_1"/device:CPU:0*
dtype0
U

Identity_2IdentityRestoreV2:1"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_1AssignVariableOpconv2d_19/bias
Identity_2"/device:CPU:0*
dtype0
U

Identity_3IdentityRestoreV2:2"/device:CPU:0*
T0*
_output_shapes
:
`
AssignVariableOp_2AssignVariableOpconv2d_20/kernel
Identity_3"/device:CPU:0*
dtype0
U

Identity_4IdentityRestoreV2:3"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_3AssignVariableOpconv2d_20/bias
Identity_4"/device:CPU:0*
dtype0
U

Identity_5IdentityRestoreV2:4"/device:CPU:0*
T0*
_output_shapes
:
`
AssignVariableOp_4AssignVariableOpconv2d_21/kernel
Identity_5"/device:CPU:0*
dtype0
U

Identity_6IdentityRestoreV2:5"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_5AssignVariableOpconv2d_21/bias
Identity_6"/device:CPU:0*
dtype0
U

Identity_7IdentityRestoreV2:6"/device:CPU:0*
T0*
_output_shapes
:
`
AssignVariableOp_6AssignVariableOpconv2d_22/kernel
Identity_7"/device:CPU:0*
dtype0
U

Identity_8IdentityRestoreV2:7"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_7AssignVariableOpconv2d_22/bias
Identity_8"/device:CPU:0*
dtype0
U

Identity_9IdentityRestoreV2:8"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_8AssignVariableOpdense_21/kernel
Identity_9"/device:CPU:0*
dtype0
V
Identity_10IdentityRestoreV2:9"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_9AssignVariableOpdense_21/biasIdentity_10"/device:CPU:0*
dtype0
W
Identity_11IdentityRestoreV2:10"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_10AssignVariableOpdense_22/kernelIdentity_11"/device:CPU:0*
dtype0
W
Identity_12IdentityRestoreV2:11"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_11AssignVariableOpdense_22/biasIdentity_12"/device:CPU:0*
dtype0
W
Identity_13IdentityRestoreV2:12"/device:CPU:0*
T0*
_output_shapes
:
a
AssignVariableOp_12AssignVariableOpdense_23/kernelIdentity_13"/device:CPU:0*
dtype0
W
Identity_14IdentityRestoreV2:13"/device:CPU:0*
T0*
_output_shapes
:
_
AssignVariableOp_13AssignVariableOpdense_23/biasIdentity_14"/device:CPU:0*
dtype0
W
Identity_15IdentityRestoreV2:14"/device:CPU:0*
T0	*
_output_shapes
:
[
AssignVariableOp_14AssignVariableOp	Adam/iterIdentity_15"/device:CPU:0*
dtype0	
W
Identity_16IdentityRestoreV2:15"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_15AssignVariableOpAdam/beta_1Identity_16"/device:CPU:0*
dtype0
W
Identity_17IdentityRestoreV2:16"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_16AssignVariableOpAdam/beta_2Identity_17"/device:CPU:0*
dtype0
W
Identity_18IdentityRestoreV2:17"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_17AssignVariableOp
Adam/decayIdentity_18"/device:CPU:0*
dtype0
W
Identity_19IdentityRestoreV2:18"/device:CPU:0*
T0*
_output_shapes
:
d
AssignVariableOp_18AssignVariableOpAdam/learning_rateIdentity_19"/device:CPU:0*
dtype0
W
Identity_20IdentityRestoreV2:19"/device:CPU:0*
T0*
_output_shapes
:
W
AssignVariableOp_19AssignVariableOptotalIdentity_20"/device:CPU:0*
dtype0
W
Identity_21IdentityRestoreV2:20"/device:CPU:0*
T0*
_output_shapes
:
W
AssignVariableOp_20AssignVariableOpcountIdentity_21"/device:CPU:0*
dtype0
W
Identity_22IdentityRestoreV2:21"/device:CPU:0*
T0*
_output_shapes
:
Y
AssignVariableOp_21AssignVariableOptotal_1Identity_22"/device:CPU:0*
dtype0
W
Identity_23IdentityRestoreV2:22"/device:CPU:0*
T0*
_output_shapes
:
Y
AssignVariableOp_22AssignVariableOpcount_1Identity_23"/device:CPU:0*
dtype0
W
Identity_24IdentityRestoreV2:23"/device:CPU:0*
T0*
_output_shapes
:
i
AssignVariableOp_23AssignVariableOpAdam/conv2d_19/kernel/mIdentity_24"/device:CPU:0*
dtype0
W
Identity_25IdentityRestoreV2:24"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_24AssignVariableOpAdam/conv2d_19/bias/mIdentity_25"/device:CPU:0*
dtype0
W
Identity_26IdentityRestoreV2:25"/device:CPU:0*
T0*
_output_shapes
:
i
AssignVariableOp_25AssignVariableOpAdam/conv2d_20/kernel/mIdentity_26"/device:CPU:0*
dtype0
W
Identity_27IdentityRestoreV2:26"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_26AssignVariableOpAdam/conv2d_20/bias/mIdentity_27"/device:CPU:0*
dtype0
W
Identity_28IdentityRestoreV2:27"/device:CPU:0*
T0*
_output_shapes
:
i
AssignVariableOp_27AssignVariableOpAdam/conv2d_21/kernel/mIdentity_28"/device:CPU:0*
dtype0
W
Identity_29IdentityRestoreV2:28"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_28AssignVariableOpAdam/conv2d_21/bias/mIdentity_29"/device:CPU:0*
dtype0
W
Identity_30IdentityRestoreV2:29"/device:CPU:0*
T0*
_output_shapes
:
i
AssignVariableOp_29AssignVariableOpAdam/conv2d_22/kernel/mIdentity_30"/device:CPU:0*
dtype0
W
Identity_31IdentityRestoreV2:30"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_30AssignVariableOpAdam/conv2d_22/bias/mIdentity_31"/device:CPU:0*
dtype0
W
Identity_32IdentityRestoreV2:31"/device:CPU:0*
T0*
_output_shapes
:
h
AssignVariableOp_31AssignVariableOpAdam/dense_21/kernel/mIdentity_32"/device:CPU:0*
dtype0
W
Identity_33IdentityRestoreV2:32"/device:CPU:0*
T0*
_output_shapes
:
f
AssignVariableOp_32AssignVariableOpAdam/dense_21/bias/mIdentity_33"/device:CPU:0*
dtype0
W
Identity_34IdentityRestoreV2:33"/device:CPU:0*
T0*
_output_shapes
:
h
AssignVariableOp_33AssignVariableOpAdam/dense_22/kernel/mIdentity_34"/device:CPU:0*
dtype0
W
Identity_35IdentityRestoreV2:34"/device:CPU:0*
T0*
_output_shapes
:
f
AssignVariableOp_34AssignVariableOpAdam/dense_22/bias/mIdentity_35"/device:CPU:0*
dtype0
W
Identity_36IdentityRestoreV2:35"/device:CPU:0*
T0*
_output_shapes
:
h
AssignVariableOp_35AssignVariableOpAdam/dense_23/kernel/mIdentity_36"/device:CPU:0*
dtype0
W
Identity_37IdentityRestoreV2:36"/device:CPU:0*
T0*
_output_shapes
:
f
AssignVariableOp_36AssignVariableOpAdam/dense_23/bias/mIdentity_37"/device:CPU:0*
dtype0
W
Identity_38IdentityRestoreV2:37"/device:CPU:0*
T0*
_output_shapes
:
i
AssignVariableOp_37AssignVariableOpAdam/conv2d_19/kernel/vIdentity_38"/device:CPU:0*
dtype0
W
Identity_39IdentityRestoreV2:38"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_38AssignVariableOpAdam/conv2d_19/bias/vIdentity_39"/device:CPU:0*
dtype0
W
Identity_40IdentityRestoreV2:39"/device:CPU:0*
T0*
_output_shapes
:
i
AssignVariableOp_39AssignVariableOpAdam/conv2d_20/kernel/vIdentity_40"/device:CPU:0*
dtype0
W
Identity_41IdentityRestoreV2:40"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_40AssignVariableOpAdam/conv2d_20/bias/vIdentity_41"/device:CPU:0*
dtype0
W
Identity_42IdentityRestoreV2:41"/device:CPU:0*
T0*
_output_shapes
:
i
AssignVariableOp_41AssignVariableOpAdam/conv2d_21/kernel/vIdentity_42"/device:CPU:0*
dtype0
W
Identity_43IdentityRestoreV2:42"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_42AssignVariableOpAdam/conv2d_21/bias/vIdentity_43"/device:CPU:0*
dtype0
W
Identity_44IdentityRestoreV2:43"/device:CPU:0*
T0*
_output_shapes
:
i
AssignVariableOp_43AssignVariableOpAdam/conv2d_22/kernel/vIdentity_44"/device:CPU:0*
dtype0
W
Identity_45IdentityRestoreV2:44"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_44AssignVariableOpAdam/conv2d_22/bias/vIdentity_45"/device:CPU:0*
dtype0
W
Identity_46IdentityRestoreV2:45"/device:CPU:0*
T0*
_output_shapes
:
h
AssignVariableOp_45AssignVariableOpAdam/dense_21/kernel/vIdentity_46"/device:CPU:0*
dtype0
W
Identity_47IdentityRestoreV2:46"/device:CPU:0*
T0*
_output_shapes
:
f
AssignVariableOp_46AssignVariableOpAdam/dense_21/bias/vIdentity_47"/device:CPU:0*
dtype0
W
Identity_48IdentityRestoreV2:47"/device:CPU:0*
T0*
_output_shapes
:
h
AssignVariableOp_47AssignVariableOpAdam/dense_22/kernel/vIdentity_48"/device:CPU:0*
dtype0
W
Identity_49IdentityRestoreV2:48"/device:CPU:0*
T0*
_output_shapes
:
f
AssignVariableOp_48AssignVariableOpAdam/dense_22/bias/vIdentity_49"/device:CPU:0*
dtype0
W
Identity_50IdentityRestoreV2:49"/device:CPU:0*
T0*
_output_shapes
:
h
AssignVariableOp_49AssignVariableOpAdam/dense_23/kernel/vIdentity_50"/device:CPU:0*
dtype0
W
Identity_51IdentityRestoreV2:50"/device:CPU:0*
T0*
_output_shapes
:
f
AssignVariableOp_50AssignVariableOpAdam/dense_23/bias/vIdentity_51"/device:CPU:0*
dtype0

NoOp_1NoOp"/device:CPU:0
╢	
Identity_52Identitysaver_filename^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp_1"/device:CPU:0*
T0*
_output_shapes
: Та
╕N
Ю
H__inference_sequential_9_layer_call_and_return_conditional_losses_167972
conv2d_19_inputB
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@ 7
)conv2d_20_biasadd_readvariableop_resource: B
(conv2d_21_conv2d_readvariableop_resource: @7
)conv2d_21_biasadd_readvariableop_resource:@B
(conv2d_22_conv2d_readvariableop_resource:@@7
)conv2d_22_biasadd_readvariableop_resource:@;
'dense_21_matmul_readvariableop_resource:
АЇ7
(dense_21_biasadd_readvariableop_resource:	Ї:
'dense_22_matmul_readvariableop_resource:	Їd6
(dense_22_biasadd_readvariableop_resource:d9
'dense_23_matmul_readvariableop_resource:d6
(dense_23_biasadd_readvariableop_resource:
identityИв conv2d_19/BiasAdd/ReadVariableOpвconv2d_19/Conv2D/ReadVariableOpв conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв conv2d_21/BiasAdd/ReadVariableOpвconv2d_21/Conv2D/ReadVariableOpв conv2d_22/BiasAdd/ReadVariableOpвconv2d_22/Conv2D/ReadVariableOpвdense_21/BiasAdd/ReadVariableOpвdense_21/MatMul/ReadVariableOpвdense_22/BiasAdd/ReadVariableOpвdense_22/MatMul/ReadVariableOpвdense_23/BiasAdd/ReadVariableOpвdense_23/MatMul/ReadVariableOp│
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOp╦
conv2d_19/Conv2DConv2Dconv2d_19_input'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@*
paddingVALID*
strides
2
conv2d_19/Conv2Dк
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp░
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/BiasAdd~
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/Relu╩
max_pooling2d_15/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPool│
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_20/Conv2D/ReadVariableOp▌
conv2d_20/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_20/Conv2Dк
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp░
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_20/BiasAdd~
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_20/Relu╩
max_pooling2d_16/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d_16/MaxPool│
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_21/Conv2D/ReadVariableOp▌
conv2d_21/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_21/Conv2Dк
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp░
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_21/BiasAdd~
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_21/Relu╩
max_pooling2d_17/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool│
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_22/Conv2D/ReadVariableOp▌
conv2d_22/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_22/Conv2Dк
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp░
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_22/BiasAdd~
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_22/Relus
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_7/ConstЬ
flatten_7/ReshapeReshapeconv2d_22/Relu:activations:0flatten_7/Const:output:0*
T0*(
_output_shapes
:         А2
flatten_7/Reshapeк
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
АЇ*
dtype02 
dense_21/MatMul/ReadVariableOpг
dense_21/MatMulMatMulflatten_7/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/MatMulи
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype02!
dense_21/BiasAdd/ReadVariableOpж
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:         Ї2
dense_21/Reluй
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	Їd*
dtype02 
dense_22/MatMul/ReadVariableOpг
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/MatMulз
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_22/BiasAdd/ReadVariableOpе
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:         d2
dense_22/Reluи
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_23/MatMul/ReadVariableOpг
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/MatMulз
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpе
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_23/Softmax╦
IdentityIdentitydense_23/Softmax:softmax:0!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         @@: : : : : : : : : : : : : : 2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:` \
/
_output_shapes
:         @@
)
_user_specified_nameconv2d_19_input
С
M
1__inference_max_pooling2d_16_layer_call_fn_167370

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ВN
·

-__inference_sequential_9_layer_call_fn_168245

inputsB
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@ 7
)conv2d_20_biasadd_readvariableop_resource: B
(conv2d_21_conv2d_readvariableop_resource: @7
)conv2d_21_biasadd_readvariableop_resource:@B
(conv2d_22_conv2d_readvariableop_resource:@@7
)conv2d_22_biasadd_readvariableop_resource:@;
'dense_21_matmul_readvariableop_resource:
АЇ7
(dense_21_biasadd_readvariableop_resource:	Ї:
'dense_22_matmul_readvariableop_resource:	Їd6
(dense_22_biasadd_readvariableop_resource:d9
'dense_23_matmul_readvariableop_resource:d6
(dense_23_biasadd_readvariableop_resource:
identityИв conv2d_19/BiasAdd/ReadVariableOpвconv2d_19/Conv2D/ReadVariableOpв conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв conv2d_21/BiasAdd/ReadVariableOpвconv2d_21/Conv2D/ReadVariableOpв conv2d_22/BiasAdd/ReadVariableOpвconv2d_22/Conv2D/ReadVariableOpвdense_21/BiasAdd/ReadVariableOpвdense_21/MatMul/ReadVariableOpвdense_22/BiasAdd/ReadVariableOpвdense_22/MatMul/ReadVariableOpвdense_23/BiasAdd/ReadVariableOpвdense_23/MatMul/ReadVariableOp│
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOp┬
conv2d_19/Conv2DConv2Dinputs'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@*
paddingVALID*
strides
2
conv2d_19/Conv2Dк
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp░
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/BiasAdd~
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/Relu╩
max_pooling2d_15/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPool│
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_20/Conv2D/ReadVariableOp▌
conv2d_20/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_20/Conv2Dк
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp░
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_20/BiasAdd~
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_20/Relu╩
max_pooling2d_16/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d_16/MaxPool│
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_21/Conv2D/ReadVariableOp▌
conv2d_21/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_21/Conv2Dк
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp░
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_21/BiasAdd~
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_21/Relu╩
max_pooling2d_17/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool│
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_22/Conv2D/ReadVariableOp▌
conv2d_22/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_22/Conv2Dк
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp░
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_22/BiasAdd~
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_22/Relus
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_7/ConstЬ
flatten_7/ReshapeReshapeconv2d_22/Relu:activations:0flatten_7/Const:output:0*
T0*(
_output_shapes
:         А2
flatten_7/Reshapeк
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
АЇ*
dtype02 
dense_21/MatMul/ReadVariableOpг
dense_21/MatMulMatMulflatten_7/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/MatMulи
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype02!
dense_21/BiasAdd/ReadVariableOpж
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:         Ї2
dense_21/Reluй
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	Їd*
dtype02 
dense_22/MatMul/ReadVariableOpг
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/MatMulз
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_22/BiasAdd/ReadVariableOpе
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:         d2
dense_22/Reluи
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_23/MatMul/ReadVariableOpг
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/MatMulз
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpе
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_23/Softmax╦
IdentityIdentitydense_23/Softmax:softmax:0!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         @@: : : : : : : : : : : : : : 2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
√

у
*__inference_conv2d_22_layer_call_fn_168380

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ЭN
Х
H__inference_sequential_9_layer_call_and_return_conditional_losses_168129

inputsB
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@ 7
)conv2d_20_biasadd_readvariableop_resource: B
(conv2d_21_conv2d_readvariableop_resource: @7
)conv2d_21_biasadd_readvariableop_resource:@B
(conv2d_22_conv2d_readvariableop_resource:@@7
)conv2d_22_biasadd_readvariableop_resource:@;
'dense_21_matmul_readvariableop_resource:
АЇ7
(dense_21_biasadd_readvariableop_resource:	Ї:
'dense_22_matmul_readvariableop_resource:	Їd6
(dense_22_biasadd_readvariableop_resource:d9
'dense_23_matmul_readvariableop_resource:d6
(dense_23_biasadd_readvariableop_resource:
identityИв conv2d_19/BiasAdd/ReadVariableOpвconv2d_19/Conv2D/ReadVariableOpв conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв conv2d_21/BiasAdd/ReadVariableOpвconv2d_21/Conv2D/ReadVariableOpв conv2d_22/BiasAdd/ReadVariableOpвconv2d_22/Conv2D/ReadVariableOpвdense_21/BiasAdd/ReadVariableOpвdense_21/MatMul/ReadVariableOpвdense_22/BiasAdd/ReadVariableOpвdense_22/MatMul/ReadVariableOpвdense_23/BiasAdd/ReadVariableOpвdense_23/MatMul/ReadVariableOp│
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOp┬
conv2d_19/Conv2DConv2Dinputs'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@*
paddingVALID*
strides
2
conv2d_19/Conv2Dк
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp░
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/BiasAdd~
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/Relu╩
max_pooling2d_15/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPool│
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_20/Conv2D/ReadVariableOp▌
conv2d_20/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_20/Conv2Dк
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp░
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_20/BiasAdd~
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_20/Relu╩
max_pooling2d_16/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d_16/MaxPool│
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_21/Conv2D/ReadVariableOp▌
conv2d_21/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_21/Conv2Dк
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp░
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_21/BiasAdd~
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_21/Relu╩
max_pooling2d_17/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool│
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_22/Conv2D/ReadVariableOp▌
conv2d_22/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_22/Conv2Dк
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp░
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_22/BiasAdd~
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_22/Relus
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_7/ConstЬ
flatten_7/ReshapeReshapeconv2d_22/Relu:activations:0flatten_7/Const:output:0*
T0*(
_output_shapes
:         А2
flatten_7/Reshapeк
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
АЇ*
dtype02 
dense_21/MatMul/ReadVariableOpг
dense_21/MatMulMatMulflatten_7/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/MatMulи
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype02!
dense_21/BiasAdd/ReadVariableOpж
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:         Ї2
dense_21/Reluй
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	Їd*
dtype02 
dense_22/MatMul/ReadVariableOpг
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/MatMulз
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_22/BiasAdd/ReadVariableOpе
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:         d2
dense_22/Reluи
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_23/MatMul/ReadVariableOpг
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/MatMulз
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpе
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_23/Softmax╦
IdentityIdentitydense_23/Softmax:softmax:0!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         @@: : : : : : : : : : : : : : 2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
м
h
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_167352

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ЭN
Г
-__inference_sequential_9_layer_call_fn_167441
conv2d_19_inputB
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@ 7
)conv2d_20_biasadd_readvariableop_resource: B
(conv2d_21_conv2d_readvariableop_resource: @7
)conv2d_21_biasadd_readvariableop_resource:@B
(conv2d_22_conv2d_readvariableop_resource:@@7
)conv2d_22_biasadd_readvariableop_resource:@;
'dense_21_matmul_readvariableop_resource:
АЇ7
(dense_21_biasadd_readvariableop_resource:	Ї:
'dense_22_matmul_readvariableop_resource:	Їd6
(dense_22_biasadd_readvariableop_resource:d9
'dense_23_matmul_readvariableop_resource:d6
(dense_23_biasadd_readvariableop_resource:
identityИв conv2d_19/BiasAdd/ReadVariableOpвconv2d_19/Conv2D/ReadVariableOpв conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв conv2d_21/BiasAdd/ReadVariableOpвconv2d_21/Conv2D/ReadVariableOpв conv2d_22/BiasAdd/ReadVariableOpвconv2d_22/Conv2D/ReadVariableOpвdense_21/BiasAdd/ReadVariableOpвdense_21/MatMul/ReadVariableOpвdense_22/BiasAdd/ReadVariableOpвdense_22/MatMul/ReadVariableOpвdense_23/BiasAdd/ReadVariableOpвdense_23/MatMul/ReadVariableOp│
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOp╦
conv2d_19/Conv2DConv2Dconv2d_19_input'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@*
paddingVALID*
strides
2
conv2d_19/Conv2Dк
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp░
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/BiasAdd~
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/Relu╩
max_pooling2d_15/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPool│
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_20/Conv2D/ReadVariableOp▌
conv2d_20/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_20/Conv2Dк
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp░
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_20/BiasAdd~
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_20/Relu╩
max_pooling2d_16/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d_16/MaxPool│
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_21/Conv2D/ReadVariableOp▌
conv2d_21/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_21/Conv2Dк
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp░
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_21/BiasAdd~
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_21/Relu╩
max_pooling2d_17/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool│
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_22/Conv2D/ReadVariableOp▌
conv2d_22/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_22/Conv2Dк
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp░
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_22/BiasAdd~
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_22/Relus
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_7/ConstЬ
flatten_7/ReshapeReshapeconv2d_22/Relu:activations:0flatten_7/Const:output:0*
T0*(
_output_shapes
:         А2
flatten_7/Reshapeк
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
АЇ*
dtype02 
dense_21/MatMul/ReadVariableOpг
dense_21/MatMulMatMulflatten_7/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/MatMulи
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype02!
dense_21/BiasAdd/ReadVariableOpж
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:         Ї2
dense_21/Reluй
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	Їd*
dtype02 
dense_22/MatMul/ReadVariableOpг
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/MatMulз
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_22/BiasAdd/ReadVariableOpе
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:         d2
dense_22/Reluи
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_23/MatMul/ReadVariableOpг
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/MatMulз
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpе
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_23/Softmax╦
IdentityIdentitydense_23/Softmax:softmax:0!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         @@: : : : : : : : : : : : : : 2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:` \
/
_output_shapes
:         @@
)
_user_specified_nameconv2d_19_input
ч
a
E__inference_flatten_7_layer_call_and_return_conditional_losses_168403

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
м
h
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_167364

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ЭN
Г
-__inference_sequential_9_layer_call_fn_167914
conv2d_19_inputB
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@ 7
)conv2d_20_biasadd_readvariableop_resource: B
(conv2d_21_conv2d_readvariableop_resource: @7
)conv2d_21_biasadd_readvariableop_resource:@B
(conv2d_22_conv2d_readvariableop_resource:@@7
)conv2d_22_biasadd_readvariableop_resource:@;
'dense_21_matmul_readvariableop_resource:
АЇ7
(dense_21_biasadd_readvariableop_resource:	Ї:
'dense_22_matmul_readvariableop_resource:	Їd6
(dense_22_biasadd_readvariableop_resource:d9
'dense_23_matmul_readvariableop_resource:d6
(dense_23_biasadd_readvariableop_resource:
identityИв conv2d_19/BiasAdd/ReadVariableOpвconv2d_19/Conv2D/ReadVariableOpв conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв conv2d_21/BiasAdd/ReadVariableOpвconv2d_21/Conv2D/ReadVariableOpв conv2d_22/BiasAdd/ReadVariableOpвconv2d_22/Conv2D/ReadVariableOpвdense_21/BiasAdd/ReadVariableOpвdense_21/MatMul/ReadVariableOpвdense_22/BiasAdd/ReadVariableOpвdense_22/MatMul/ReadVariableOpвdense_23/BiasAdd/ReadVariableOpвdense_23/MatMul/ReadVariableOp│
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOp╦
conv2d_19/Conv2DConv2Dconv2d_19_input'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@*
paddingVALID*
strides
2
conv2d_19/Conv2Dк
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp░
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/BiasAdd~
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/Relu╩
max_pooling2d_15/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPool│
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_20/Conv2D/ReadVariableOp▌
conv2d_20/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_20/Conv2Dк
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp░
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_20/BiasAdd~
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_20/Relu╩
max_pooling2d_16/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d_16/MaxPool│
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_21/Conv2D/ReadVariableOp▌
conv2d_21/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_21/Conv2Dк
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp░
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_21/BiasAdd~
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_21/Relu╩
max_pooling2d_17/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool│
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_22/Conv2D/ReadVariableOp▌
conv2d_22/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_22/Conv2Dк
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp░
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_22/BiasAdd~
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_22/Relus
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_7/ConstЬ
flatten_7/ReshapeReshapeconv2d_22/Relu:activations:0flatten_7/Const:output:0*
T0*(
_output_shapes
:         А2
flatten_7/Reshapeк
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
АЇ*
dtype02 
dense_21/MatMul/ReadVariableOpг
dense_21/MatMulMatMulflatten_7/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/MatMulи
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype02!
dense_21/BiasAdd/ReadVariableOpж
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:         Ї2
dense_21/Reluй
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	Їd*
dtype02 
dense_22/MatMul/ReadVariableOpг
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/MatMulз
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_22/BiasAdd/ReadVariableOpе
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:         d2
dense_22/Reluи
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_23/MatMul/ReadVariableOpг
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/MatMulз
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpе
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_23/Softmax╦
IdentityIdentitydense_23/Softmax:softmax:0!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         @@: : : : : : : : : : : : : : 2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:` \
/
_output_shapes
:         @@
)
_user_specified_nameconv2d_19_input
Щ

┌
)__inference_dense_23_layer_call_fn_168458

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╕

°
D__inference_dense_21_layer_call_and_return_conditional_losses_168425

inputs2
matmul_readvariableop_resource:
АЇ.
biasadd_readvariableop_resource:	Ї
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АЇ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Ї2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         Ї2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╕N
Ю
H__inference_sequential_9_layer_call_and_return_conditional_losses_168030
conv2d_19_inputB
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@ 7
)conv2d_20_biasadd_readvariableop_resource: B
(conv2d_21_conv2d_readvariableop_resource: @7
)conv2d_21_biasadd_readvariableop_resource:@B
(conv2d_22_conv2d_readvariableop_resource:@@7
)conv2d_22_biasadd_readvariableop_resource:@;
'dense_21_matmul_readvariableop_resource:
АЇ7
(dense_21_biasadd_readvariableop_resource:	Ї:
'dense_22_matmul_readvariableop_resource:	Їd6
(dense_22_biasadd_readvariableop_resource:d9
'dense_23_matmul_readvariableop_resource:d6
(dense_23_biasadd_readvariableop_resource:
identityИв conv2d_19/BiasAdd/ReadVariableOpвconv2d_19/Conv2D/ReadVariableOpв conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв conv2d_21/BiasAdd/ReadVariableOpвconv2d_21/Conv2D/ReadVariableOpв conv2d_22/BiasAdd/ReadVariableOpвconv2d_22/Conv2D/ReadVariableOpвdense_21/BiasAdd/ReadVariableOpвdense_21/MatMul/ReadVariableOpвdense_22/BiasAdd/ReadVariableOpвdense_22/MatMul/ReadVariableOpвdense_23/BiasAdd/ReadVariableOpвdense_23/MatMul/ReadVariableOp│
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOp╦
conv2d_19/Conv2DConv2Dconv2d_19_input'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@*
paddingVALID*
strides
2
conv2d_19/Conv2Dк
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp░
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/BiasAdd~
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/Relu╩
max_pooling2d_15/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPool│
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_20/Conv2D/ReadVariableOp▌
conv2d_20/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_20/Conv2Dк
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp░
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_20/BiasAdd~
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_20/Relu╩
max_pooling2d_16/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d_16/MaxPool│
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_21/Conv2D/ReadVariableOp▌
conv2d_21/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_21/Conv2Dк
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp░
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_21/BiasAdd~
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_21/Relu╩
max_pooling2d_17/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool│
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_22/Conv2D/ReadVariableOp▌
conv2d_22/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_22/Conv2Dк
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp░
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_22/BiasAdd~
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_22/Relus
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_7/ConstЬ
flatten_7/ReshapeReshapeconv2d_22/Relu:activations:0flatten_7/Const:output:0*
T0*(
_output_shapes
:         А2
flatten_7/Reshapeк
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
АЇ*
dtype02 
dense_21/MatMul/ReadVariableOpг
dense_21/MatMulMatMulflatten_7/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/MatMulи
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype02!
dense_21/BiasAdd/ReadVariableOpж
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:         Ї2
dense_21/Reluй
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	Їd*
dtype02 
dense_22/MatMul/ReadVariableOpг
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/MatMulз
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_22/BiasAdd/ReadVariableOpе
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:         d2
dense_22/Reluи
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_23/MatMul/ReadVariableOpг
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/MatMulз
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpе
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_23/Softmax╦
IdentityIdentitydense_23/Softmax:softmax:0!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         @@: : : : : : : : : : : : : : 2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:` \
/
_output_shapes
:         @@
)
_user_specified_nameconv2d_19_input
└
Е
$__inference_signature_wrapper_168071
conv2d_19_input!
unknown:@
	unknown_0:@#
	unknown_1:@ 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:
АЇ
	unknown_8:	Ї
	unknown_9:	Їd

unknown_10:d

unknown_11:d

unknown_12:
identityИвStatefulPartitionedCall∙
StatefulPartitionedCallStatefulPartitionedCallconv2d_19_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_1673462
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         @@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         @@
)
_user_specified_nameconv2d_19_input
м
h
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_167376

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Х

█
)__inference_dense_22_layer_call_fn_168436

inputs1
matmul_readvariableop_resource:	Їd-
biasadd_readvariableop_resource:d
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Їd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         d2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Ї: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs
С
M
1__inference_max_pooling2d_15_layer_call_fn_167358

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ц
■
E__inference_conv2d_20_layer_call_and_return_conditional_losses_168347

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
√

у
*__inference_conv2d_20_layer_call_fn_168336

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ц
■
E__inference_conv2d_19_layer_call_and_return_conditional_losses_168325

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         >>@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         >>@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
░

Ў
D__inference_dense_22_layer_call_and_return_conditional_losses_168447

inputs1
matmul_readvariableop_resource:	Їd-
biasadd_readvariableop_resource:d
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Їd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         d2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Ї: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Ї
 
_user_specified_nameinputs
Ц
■
E__inference_conv2d_22_layer_call_and_return_conditional_losses_168391

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ВN
·

-__inference_sequential_9_layer_call_fn_168303

inputsB
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@ 7
)conv2d_20_biasadd_readvariableop_resource: B
(conv2d_21_conv2d_readvariableop_resource: @7
)conv2d_21_biasadd_readvariableop_resource:@B
(conv2d_22_conv2d_readvariableop_resource:@@7
)conv2d_22_biasadd_readvariableop_resource:@;
'dense_21_matmul_readvariableop_resource:
АЇ7
(dense_21_biasadd_readvariableop_resource:	Ї:
'dense_22_matmul_readvariableop_resource:	Їd6
(dense_22_biasadd_readvariableop_resource:d9
'dense_23_matmul_readvariableop_resource:d6
(dense_23_biasadd_readvariableop_resource:
identityИв conv2d_19/BiasAdd/ReadVariableOpвconv2d_19/Conv2D/ReadVariableOpв conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв conv2d_21/BiasAdd/ReadVariableOpвconv2d_21/Conv2D/ReadVariableOpв conv2d_22/BiasAdd/ReadVariableOpвconv2d_22/Conv2D/ReadVariableOpвdense_21/BiasAdd/ReadVariableOpвdense_21/MatMul/ReadVariableOpвdense_22/BiasAdd/ReadVariableOpвdense_22/MatMul/ReadVariableOpвdense_23/BiasAdd/ReadVariableOpвdense_23/MatMul/ReadVariableOp│
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOp┬
conv2d_19/Conv2DConv2Dinputs'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@*
paddingVALID*
strides
2
conv2d_19/Conv2Dк
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp░
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/BiasAdd~
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/Relu╩
max_pooling2d_15/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPool│
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_20/Conv2D/ReadVariableOp▌
conv2d_20/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_20/Conv2Dк
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp░
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_20/BiasAdd~
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_20/Relu╩
max_pooling2d_16/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d_16/MaxPool│
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_21/Conv2D/ReadVariableOp▌
conv2d_21/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_21/Conv2Dк
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp░
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_21/BiasAdd~
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_21/Relu╩
max_pooling2d_17/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool│
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_22/Conv2D/ReadVariableOp▌
conv2d_22/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_22/Conv2Dк
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp░
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_22/BiasAdd~
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_22/Relus
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_7/ConstЬ
flatten_7/ReshapeReshapeconv2d_22/Relu:activations:0flatten_7/Const:output:0*
T0*(
_output_shapes
:         А2
flatten_7/Reshapeк
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
АЇ*
dtype02 
dense_21/MatMul/ReadVariableOpг
dense_21/MatMulMatMulflatten_7/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/MatMulи
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype02!
dense_21/BiasAdd/ReadVariableOpж
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:         Ї2
dense_21/Reluй
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	Їd*
dtype02 
dense_22/MatMul/ReadVariableOpг
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/MatMulз
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_22/BiasAdd/ReadVariableOpе
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:         d2
dense_22/Reluи
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_23/MatMul/ReadVariableOpг
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/MatMulз
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpе
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_23/Softmax╦
IdentityIdentitydense_23/Softmax:softmax:0!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         @@: : : : : : : : : : : : : : 2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
√

у
*__inference_conv2d_21_layer_call_fn_168358

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Ц
■
E__inference_conv2d_21_layer_call_and_return_conditional_losses_168369

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╠
F
*__inference_flatten_7_layer_call_fn_168397

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
С
M
1__inference_max_pooling2d_17_layer_call_fn_167382

inputs
identityн
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
√

у
*__inference_conv2d_19_layer_call_fn_168314

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         >>@2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         >>@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
їb
у
!__inference__wrapped_model_167346
conv2d_19_inputO
5sequential_9_conv2d_19_conv2d_readvariableop_resource:@D
6sequential_9_conv2d_19_biasadd_readvariableop_resource:@O
5sequential_9_conv2d_20_conv2d_readvariableop_resource:@ D
6sequential_9_conv2d_20_biasadd_readvariableop_resource: O
5sequential_9_conv2d_21_conv2d_readvariableop_resource: @D
6sequential_9_conv2d_21_biasadd_readvariableop_resource:@O
5sequential_9_conv2d_22_conv2d_readvariableop_resource:@@D
6sequential_9_conv2d_22_biasadd_readvariableop_resource:@H
4sequential_9_dense_21_matmul_readvariableop_resource:
АЇD
5sequential_9_dense_21_biasadd_readvariableop_resource:	ЇG
4sequential_9_dense_22_matmul_readvariableop_resource:	ЇdC
5sequential_9_dense_22_biasadd_readvariableop_resource:dF
4sequential_9_dense_23_matmul_readvariableop_resource:dC
5sequential_9_dense_23_biasadd_readvariableop_resource:
identityИв-sequential_9/conv2d_19/BiasAdd/ReadVariableOpв,sequential_9/conv2d_19/Conv2D/ReadVariableOpв-sequential_9/conv2d_20/BiasAdd/ReadVariableOpв,sequential_9/conv2d_20/Conv2D/ReadVariableOpв-sequential_9/conv2d_21/BiasAdd/ReadVariableOpв,sequential_9/conv2d_21/Conv2D/ReadVariableOpв-sequential_9/conv2d_22/BiasAdd/ReadVariableOpв,sequential_9/conv2d_22/Conv2D/ReadVariableOpв,sequential_9/dense_21/BiasAdd/ReadVariableOpв+sequential_9/dense_21/MatMul/ReadVariableOpв,sequential_9/dense_22/BiasAdd/ReadVariableOpв+sequential_9/dense_22/MatMul/ReadVariableOpв,sequential_9/dense_23/BiasAdd/ReadVariableOpв+sequential_9/dense_23/MatMul/ReadVariableOp┌
,sequential_9/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02.
,sequential_9/conv2d_19/Conv2D/ReadVariableOpЄ
sequential_9/conv2d_19/Conv2DConv2Dconv2d_19_input4sequential_9/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@*
paddingVALID*
strides
2
sequential_9/conv2d_19/Conv2D╤
-sequential_9/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_9/conv2d_19/BiasAdd/ReadVariableOpф
sequential_9/conv2d_19/BiasAddBiasAdd&sequential_9/conv2d_19/Conv2D:output:05sequential_9/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@2 
sequential_9/conv2d_19/BiasAddе
sequential_9/conv2d_19/ReluRelu'sequential_9/conv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:         >>@2
sequential_9/conv2d_19/Reluё
%sequential_9/max_pooling2d_15/MaxPoolMaxPool)sequential_9/conv2d_19/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2'
%sequential_9/max_pooling2d_15/MaxPool┌
,sequential_9/conv2d_20/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02.
,sequential_9/conv2d_20/Conv2D/ReadVariableOpС
sequential_9/conv2d_20/Conv2DConv2D.sequential_9/max_pooling2d_15/MaxPool:output:04sequential_9/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
sequential_9/conv2d_20/Conv2D╤
-sequential_9/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_9/conv2d_20/BiasAdd/ReadVariableOpф
sequential_9/conv2d_20/BiasAddBiasAdd&sequential_9/conv2d_20/Conv2D:output:05sequential_9/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2 
sequential_9/conv2d_20/BiasAddе
sequential_9/conv2d_20/ReluRelu'sequential_9/conv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:          2
sequential_9/conv2d_20/Reluё
%sequential_9/max_pooling2d_16/MaxPoolMaxPool)sequential_9/conv2d_20/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2'
%sequential_9/max_pooling2d_16/MaxPool┌
,sequential_9/conv2d_21/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_9/conv2d_21/Conv2D/ReadVariableOpС
sequential_9/conv2d_21/Conv2DConv2D.sequential_9/max_pooling2d_16/MaxPool:output:04sequential_9/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
sequential_9/conv2d_21/Conv2D╤
-sequential_9/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_9/conv2d_21/BiasAdd/ReadVariableOpф
sequential_9/conv2d_21/BiasAddBiasAdd&sequential_9/conv2d_21/Conv2D:output:05sequential_9/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2 
sequential_9/conv2d_21/BiasAddе
sequential_9/conv2d_21/ReluRelu'sequential_9/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
sequential_9/conv2d_21/Reluё
%sequential_9/max_pooling2d_17/MaxPoolMaxPool)sequential_9/conv2d_21/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2'
%sequential_9/max_pooling2d_17/MaxPool┌
,sequential_9/conv2d_22/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,sequential_9/conv2d_22/Conv2D/ReadVariableOpС
sequential_9/conv2d_22/Conv2DConv2D.sequential_9/max_pooling2d_17/MaxPool:output:04sequential_9/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
sequential_9/conv2d_22/Conv2D╤
-sequential_9/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_9/conv2d_22/BiasAdd/ReadVariableOpф
sequential_9/conv2d_22/BiasAddBiasAdd&sequential_9/conv2d_22/Conv2D:output:05sequential_9/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2 
sequential_9/conv2d_22/BiasAddе
sequential_9/conv2d_22/ReluRelu'sequential_9/conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
sequential_9/conv2d_22/ReluН
sequential_9/flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
sequential_9/flatten_7/Const╨
sequential_9/flatten_7/ReshapeReshape)sequential_9/conv2d_22/Relu:activations:0%sequential_9/flatten_7/Const:output:0*
T0*(
_output_shapes
:         А2 
sequential_9/flatten_7/Reshape╤
+sequential_9/dense_21/MatMul/ReadVariableOpReadVariableOp4sequential_9_dense_21_matmul_readvariableop_resource* 
_output_shapes
:
АЇ*
dtype02-
+sequential_9/dense_21/MatMul/ReadVariableOp╫
sequential_9/dense_21/MatMulMatMul'sequential_9/flatten_7/Reshape:output:03sequential_9/dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
sequential_9/dense_21/MatMul╧
,sequential_9/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_9_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype02.
,sequential_9/dense_21/BiasAdd/ReadVariableOp┌
sequential_9/dense_21/BiasAddBiasAdd&sequential_9/dense_21/MatMul:product:04sequential_9/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
sequential_9/dense_21/BiasAddЫ
sequential_9/dense_21/ReluRelu&sequential_9/dense_21/BiasAdd:output:0*
T0*(
_output_shapes
:         Ї2
sequential_9/dense_21/Relu╨
+sequential_9/dense_22/MatMul/ReadVariableOpReadVariableOp4sequential_9_dense_22_matmul_readvariableop_resource*
_output_shapes
:	Їd*
dtype02-
+sequential_9/dense_22/MatMul/ReadVariableOp╫
sequential_9/dense_22/MatMulMatMul(sequential_9/dense_21/Relu:activations:03sequential_9/dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
sequential_9/dense_22/MatMul╬
,sequential_9/dense_22/BiasAdd/ReadVariableOpReadVariableOp5sequential_9_dense_22_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02.
,sequential_9/dense_22/BiasAdd/ReadVariableOp┘
sequential_9/dense_22/BiasAddBiasAdd&sequential_9/dense_22/MatMul:product:04sequential_9/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
sequential_9/dense_22/BiasAddЪ
sequential_9/dense_22/ReluRelu&sequential_9/dense_22/BiasAdd:output:0*
T0*'
_output_shapes
:         d2
sequential_9/dense_22/Relu╧
+sequential_9/dense_23/MatMul/ReadVariableOpReadVariableOp4sequential_9_dense_23_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02-
+sequential_9/dense_23/MatMul/ReadVariableOp╫
sequential_9/dense_23/MatMulMatMul(sequential_9/dense_22/Relu:activations:03sequential_9/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_9/dense_23/MatMul╬
,sequential_9/dense_23/BiasAdd/ReadVariableOpReadVariableOp5sequential_9_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_9/dense_23/BiasAdd/ReadVariableOp┘
sequential_9/dense_23/BiasAddBiasAdd&sequential_9/dense_23/MatMul:product:04sequential_9/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_9/dense_23/BiasAddг
sequential_9/dense_23/SoftmaxSoftmax&sequential_9/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
sequential_9/dense_23/SoftmaxО
IdentityIdentity'sequential_9/dense_23/Softmax:softmax:0.^sequential_9/conv2d_19/BiasAdd/ReadVariableOp-^sequential_9/conv2d_19/Conv2D/ReadVariableOp.^sequential_9/conv2d_20/BiasAdd/ReadVariableOp-^sequential_9/conv2d_20/Conv2D/ReadVariableOp.^sequential_9/conv2d_21/BiasAdd/ReadVariableOp-^sequential_9/conv2d_21/Conv2D/ReadVariableOp.^sequential_9/conv2d_22/BiasAdd/ReadVariableOp-^sequential_9/conv2d_22/Conv2D/ReadVariableOp-^sequential_9/dense_21/BiasAdd/ReadVariableOp,^sequential_9/dense_21/MatMul/ReadVariableOp-^sequential_9/dense_22/BiasAdd/ReadVariableOp,^sequential_9/dense_22/MatMul/ReadVariableOp-^sequential_9/dense_23/BiasAdd/ReadVariableOp,^sequential_9/dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         @@: : : : : : : : : : : : : : 2^
-sequential_9/conv2d_19/BiasAdd/ReadVariableOp-sequential_9/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_19/Conv2D/ReadVariableOp,sequential_9/conv2d_19/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_20/BiasAdd/ReadVariableOp-sequential_9/conv2d_20/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_20/Conv2D/ReadVariableOp,sequential_9/conv2d_20/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_21/BiasAdd/ReadVariableOp-sequential_9/conv2d_21/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_21/Conv2D/ReadVariableOp,sequential_9/conv2d_21/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_22/BiasAdd/ReadVariableOp-sequential_9/conv2d_22/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_22/Conv2D/ReadVariableOp,sequential_9/conv2d_22/Conv2D/ReadVariableOp2\
,sequential_9/dense_21/BiasAdd/ReadVariableOp,sequential_9/dense_21/BiasAdd/ReadVariableOp2Z
+sequential_9/dense_21/MatMul/ReadVariableOp+sequential_9/dense_21/MatMul/ReadVariableOp2\
,sequential_9/dense_22/BiasAdd/ReadVariableOp,sequential_9/dense_22/BiasAdd/ReadVariableOp2Z
+sequential_9/dense_22/MatMul/ReadVariableOp+sequential_9/dense_22/MatMul/ReadVariableOp2\
,sequential_9/dense_23/BiasAdd/ReadVariableOp,sequential_9/dense_23/BiasAdd/ReadVariableOp2Z
+sequential_9/dense_23/MatMul/ReadVariableOp+sequential_9/dense_23/MatMul/ReadVariableOp:` \
/
_output_shapes
:         @@
)
_user_specified_nameconv2d_19_input
┤

ї
D__inference_dense_23_layer_call_and_return_conditional_losses_168469

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
ЭN
Х
H__inference_sequential_9_layer_call_and_return_conditional_losses_168187

inputsB
(conv2d_19_conv2d_readvariableop_resource:@7
)conv2d_19_biasadd_readvariableop_resource:@B
(conv2d_20_conv2d_readvariableop_resource:@ 7
)conv2d_20_biasadd_readvariableop_resource: B
(conv2d_21_conv2d_readvariableop_resource: @7
)conv2d_21_biasadd_readvariableop_resource:@B
(conv2d_22_conv2d_readvariableop_resource:@@7
)conv2d_22_biasadd_readvariableop_resource:@;
'dense_21_matmul_readvariableop_resource:
АЇ7
(dense_21_biasadd_readvariableop_resource:	Ї:
'dense_22_matmul_readvariableop_resource:	Їd6
(dense_22_biasadd_readvariableop_resource:d9
'dense_23_matmul_readvariableop_resource:d6
(dense_23_biasadd_readvariableop_resource:
identityИв conv2d_19/BiasAdd/ReadVariableOpвconv2d_19/Conv2D/ReadVariableOpв conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв conv2d_21/BiasAdd/ReadVariableOpвconv2d_21/Conv2D/ReadVariableOpв conv2d_22/BiasAdd/ReadVariableOpвconv2d_22/Conv2D/ReadVariableOpвdense_21/BiasAdd/ReadVariableOpвdense_21/MatMul/ReadVariableOpвdense_22/BiasAdd/ReadVariableOpвdense_22/MatMul/ReadVariableOpвdense_23/BiasAdd/ReadVariableOpвdense_23/MatMul/ReadVariableOp│
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_19/Conv2D/ReadVariableOp┬
conv2d_19/Conv2DConv2Dinputs'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@*
paddingVALID*
strides
2
conv2d_19/Conv2Dк
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp░
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/BiasAdd~
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:         >>@2
conv2d_19/Relu╩
max_pooling2d_15/MaxPoolMaxPoolconv2d_19/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPool│
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_20/Conv2D/ReadVariableOp▌
conv2d_20/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_20/Conv2Dк
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp░
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_20/BiasAdd~
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_20/Relu╩
max_pooling2d_16/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d_16/MaxPool│
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_21/Conv2D/ReadVariableOp▌
conv2d_21/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_21/Conv2Dк
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp░
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_21/BiasAdd~
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_21/Relu╩
max_pooling2d_17/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool│
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_22/Conv2D/ReadVariableOp▌
conv2d_22/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2
conv2d_22/Conv2Dк
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp░
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_22/BiasAdd~
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_22/Relus
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_7/ConstЬ
flatten_7/ReshapeReshapeconv2d_22/Relu:activations:0flatten_7/Const:output:0*
T0*(
_output_shapes
:         А2
flatten_7/Reshapeк
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
АЇ*
dtype02 
dense_21/MatMul/ReadVariableOpг
dense_21/MatMulMatMulflatten_7/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/MatMulи
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype02!
dense_21/BiasAdd/ReadVariableOpж
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:         Ї2
dense_21/Reluй
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	Їd*
dtype02 
dense_22/MatMul/ReadVariableOpг
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/MatMulз
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_22/BiasAdd/ReadVariableOpе
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:         d2
dense_22/Reluи
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_23/MatMul/ReadVariableOpг
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/MatMulз
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpе
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_23/Softmax╦
IdentityIdentitydense_23/Softmax:softmax:0!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:         @@: : : : : : : : : : : : : : 2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Э

▌
)__inference_dense_21_layer_call_fn_168414

inputs2
matmul_readvariableop_resource:
АЇ.
biasadd_readvariableop_resource:	Ї
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АЇ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ї*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ї2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Ї2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         Ї2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs"╠-
saver_filename:0
Identity:0Identity_528"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*├
serving_defaultп
S
conv2d_19_input@
!serving_default_conv2d_19_input:0         @@<
dense_230
StatefulPartitionedCall:0         tensorflow/serving/predict:╧Ў
лe
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
+┤&call_and_return_all_conditional_losses
╡__call__
╢_default_save_signature"Чa
_tf_keras_sequential°`{"name": "sequential_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_19_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_7", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 500, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 64, 64, 1]}, "float32", "conv2d_19_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_19_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 12}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, {"class_name": "Flatten", "config": {"name": "flatten_7", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 16}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 500, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 28}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
╙

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
╖__call__
+╕&call_and_return_all_conditional_losses"м

_tf_keras_layerТ
{"name": "conv2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 1]}}
▓
trainable_variables
regularization_losses
	variables
	keras_api
╣__call__
+║&call_and_return_all_conditional_losses"б
_tf_keras_layerЗ{"name": "max_pooling2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 29}}
╘


kernel
bias
trainable_variables
regularization_losses
 	variables
!	keras_api
╗__call__
+╝&call_and_return_all_conditional_losses"н	
_tf_keras_layerУ	{"name": "conv2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 31, 64]}}
▓
"trainable_variables
#regularization_losses
$	variables
%	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses"б
_tf_keras_layerЗ{"name": "max_pooling2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 31}}
╓


&kernel
'bias
(trainable_variables
)regularization_losses
*	variables
+	keras_api
┐__call__
+└&call_and_return_all_conditional_losses"п	
_tf_keras_layerХ	{"name": "conv2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 32]}}
│
,trainable_variables
-regularization_losses
.	variables
/	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses"в
_tf_keras_layerИ{"name": "max_pooling2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 33}}
╒


0kernel
1bias
2trainable_variables
3regularization_losses
4	variables
5	keras_api
├__call__
+─&call_and_return_all_conditional_losses"о	
_tf_keras_layerФ	{"name": "conv2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 6, 64]}}
Ш
6trainable_variables
7regularization_losses
8	variables
9	keras_api
┼__call__
+╞&call_and_return_all_conditional_losses"З
_tf_keras_layerэ{"name": "flatten_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_7", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 35}}
┘

:kernel
;bias
<trainable_variables
=regularization_losses
>	variables
?	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses"▓
_tf_keras_layerШ{"name": "dense_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 500, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
╫

@kernel
Abias
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses"░
_tf_keras_layerЦ{"name": "dense_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 500}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 500]}}
╪

Fkernel
Gbias
Htrainable_variables
Iregularization_losses
J	variables
K	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses"▒
_tf_keras_layerЧ{"name": "dense_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
ы
Liter

Mbeta_1

Nbeta_2
	Odecay
Plearning_ratemШmЩmЪmЫ&mЬ'mЭ0mЮ1mЯ:mа;mб@mвAmгFmдGmеvжvзvиvй&vк'vл0vм1vн:vо;vп@v░Av▒Fv▓Gv│"
	optimizer
Ж
0
1
2
3
&4
'5
06
17
:8
;9
@10
A11
F12
G13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ж
0
1
2
3
&4
'5
06
17
:8
;9
@10
A11
F12
G13"
trackable_list_wrapper
╬
Qmetrics
trainable_variables
regularization_losses
Rlayer_metrics

Slayers
Tnon_trainable_variables
	variables
Ulayer_regularization_losses
╡__call__
╢_default_save_signature
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses"
_generic_user_object
-
═serving_default"
signature_map
*:(@2conv2d_19/kernel
:@2conv2d_19/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
Vmetrics
trainable_variables
Wlayer_metrics
regularization_losses

Xlayers
Ynon_trainable_variables
	variables
Zlayer_regularization_losses
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
[metrics
trainable_variables
\layer_metrics
regularization_losses

]layers
^non_trainable_variables
	variables
_layer_regularization_losses
╣__call__
+║&call_and_return_all_conditional_losses
'║"call_and_return_conditional_losses"
_generic_user_object
*:(@ 2conv2d_20/kernel
: 2conv2d_20/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░
`metrics
trainable_variables
alayer_metrics
regularization_losses

blayers
cnon_trainable_variables
 	variables
dlayer_regularization_losses
╗__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
emetrics
"trainable_variables
flayer_metrics
#regularization_losses

glayers
hnon_trainable_variables
$	variables
ilayer_regularization_losses
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_21/kernel
:@2conv2d_21/bias
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
░
jmetrics
(trainable_variables
klayer_metrics
)regularization_losses

llayers
mnon_trainable_variables
*	variables
nlayer_regularization_losses
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
ometrics
,trainable_variables
player_metrics
-regularization_losses

qlayers
rnon_trainable_variables
.	variables
slayer_regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_22/kernel
:@2conv2d_22/bias
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
░
tmetrics
2trainable_variables
ulayer_metrics
3regularization_losses

vlayers
wnon_trainable_variables
4	variables
xlayer_regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
ymetrics
6trainable_variables
zlayer_metrics
7regularization_losses

{layers
|non_trainable_variables
8	variables
}layer_regularization_losses
┼__call__
+╞&call_and_return_all_conditional_losses
'╞"call_and_return_conditional_losses"
_generic_user_object
#:!
АЇ2dense_21/kernel
:Ї2dense_21/bias
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
│
~metrics
<trainable_variables
layer_metrics
=regularization_losses
Аlayers
Бnon_trainable_variables
>	variables
 Вlayer_regularization_losses
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
": 	Їd2dense_22/kernel
:d2dense_22/bias
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
╡
Гmetrics
Btrainable_variables
Дlayer_metrics
Cregularization_losses
Еlayers
Жnon_trainable_variables
D	variables
 Зlayer_regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
!:d2dense_23/kernel
:2dense_23/bias
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
╡
Иmetrics
Htrainable_variables
Йlayer_metrics
Iregularization_losses
Кlayers
Лnon_trainable_variables
J	variables
 Мlayer_regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
Н0
О1"
trackable_list_wrapper
 "
trackable_dict_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╪

Пtotal

Рcount
С	variables
Т	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 39}
Ь

Уtotal

Фcount
Х
_fn_kwargs
Ц	variables
Ч	keras_api"╨
_tf_keras_metric╡{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 28}
:  (2total
:  (2count
0
П0
Р1"
trackable_list_wrapper
.
С	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
У0
Ф1"
trackable_list_wrapper
.
Ц	variables"
_generic_user_object
/:-@2Adam/conv2d_19/kernel/m
!:@2Adam/conv2d_19/bias/m
/:-@ 2Adam/conv2d_20/kernel/m
!: 2Adam/conv2d_20/bias/m
/:- @2Adam/conv2d_21/kernel/m
!:@2Adam/conv2d_21/bias/m
/:-@@2Adam/conv2d_22/kernel/m
!:@2Adam/conv2d_22/bias/m
(:&
АЇ2Adam/dense_21/kernel/m
!:Ї2Adam/dense_21/bias/m
':%	Їd2Adam/dense_22/kernel/m
 :d2Adam/dense_22/bias/m
&:$d2Adam/dense_23/kernel/m
 :2Adam/dense_23/bias/m
/:-@2Adam/conv2d_19/kernel/v
!:@2Adam/conv2d_19/bias/v
/:-@ 2Adam/conv2d_20/kernel/v
!: 2Adam/conv2d_20/bias/v
/:- @2Adam/conv2d_21/kernel/v
!:@2Adam/conv2d_21/bias/v
/:-@@2Adam/conv2d_22/kernel/v
!:@2Adam/conv2d_22/bias/v
(:&
АЇ2Adam/dense_21/kernel/v
!:Ї2Adam/dense_21/bias/v
':%	Їd2Adam/dense_22/kernel/v
 :d2Adam/dense_22/bias/v
&:$d2Adam/dense_23/kernel/v
 :2Adam/dense_23/bias/v
ю2ы
H__inference_sequential_9_layer_call_and_return_conditional_losses_168129
H__inference_sequential_9_layer_call_and_return_conditional_losses_168187
H__inference_sequential_9_layer_call_and_return_conditional_losses_167972
H__inference_sequential_9_layer_call_and_return_conditional_losses_168030└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
В2 
-__inference_sequential_9_layer_call_fn_167441
-__inference_sequential_9_layer_call_fn_168245
-__inference_sequential_9_layer_call_fn_168303
-__inference_sequential_9_layer_call_fn_167914└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
я2ь
!__inference__wrapped_model_167346╞
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *6в3
1К.
conv2d_19_input         @@
╘2╤
*__inference_conv2d_19_layer_call_fn_168314в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_19_layer_call_and_return_conditional_losses_168325в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Щ2Ц
1__inference_max_pooling2d_15_layer_call_fn_167358р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
┤2▒
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_167352р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
╘2╤
*__inference_conv2d_20_layer_call_fn_168336в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_20_layer_call_and_return_conditional_losses_168347в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Щ2Ц
1__inference_max_pooling2d_16_layer_call_fn_167370р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
┤2▒
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_167364р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
╘2╤
*__inference_conv2d_21_layer_call_fn_168358в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_21_layer_call_and_return_conditional_losses_168369в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Щ2Ц
1__inference_max_pooling2d_17_layer_call_fn_167382р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
┤2▒
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_167376р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
╘2╤
*__inference_conv2d_22_layer_call_fn_168380в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_conv2d_22_layer_call_and_return_conditional_losses_168391в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╘2╤
*__inference_flatten_7_layer_call_fn_168397в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_flatten_7_layer_call_and_return_conditional_losses_168403в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_dense_21_layer_call_fn_168414в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_dense_21_layer_call_and_return_conditional_losses_168425в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_dense_22_layer_call_fn_168436в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_dense_22_layer_call_and_return_conditional_losses_168447в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_dense_23_layer_call_fn_168458в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_dense_23_layer_call_and_return_conditional_losses_168469в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙B╨
$__inference_signature_wrapper_168071conv2d_19_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 н
!__inference__wrapped_model_167346З&'01:;@AFG@в=
6в3
1К.
conv2d_19_input         @@
к "3к0
.
dense_23"К
dense_23         ╡
E__inference_conv2d_19_layer_call_and_return_conditional_losses_168325l7в4
-в*
(К%
inputs         @@
к "-в*
#К 
0         >>@
Ъ Н
*__inference_conv2d_19_layer_call_fn_168314_7в4
-в*
(К%
inputs         @@
к " К         >>@╡
E__inference_conv2d_20_layer_call_and_return_conditional_losses_168347l7в4
-в*
(К%
inputs         @
к "-в*
#К 
0          
Ъ Н
*__inference_conv2d_20_layer_call_fn_168336_7в4
-в*
(К%
inputs         @
к " К          ╡
E__inference_conv2d_21_layer_call_and_return_conditional_losses_168369l&'7в4
-в*
(К%
inputs          
к "-в*
#К 
0         @
Ъ Н
*__inference_conv2d_21_layer_call_fn_168358_&'7в4
-в*
(К%
inputs          
к " К         @╡
E__inference_conv2d_22_layer_call_and_return_conditional_losses_168391l017в4
-в*
(К%
inputs         @
к "-в*
#К 
0         @
Ъ Н
*__inference_conv2d_22_layer_call_fn_168380_017в4
-в*
(К%
inputs         @
к " К         @ж
D__inference_dense_21_layer_call_and_return_conditional_losses_168425^:;0в-
&в#
!К
inputs         А
к "&в#
К
0         Ї
Ъ ~
)__inference_dense_21_layer_call_fn_168414Q:;0в-
&в#
!К
inputs         А
к "К         Їе
D__inference_dense_22_layer_call_and_return_conditional_losses_168447]@A0в-
&в#
!К
inputs         Ї
к "%в"
К
0         d
Ъ }
)__inference_dense_22_layer_call_fn_168436P@A0в-
&в#
!К
inputs         Ї
к "К         dд
D__inference_dense_23_layer_call_and_return_conditional_losses_168469\FG/в,
%в"
 К
inputs         d
к "%в"
К
0         
Ъ |
)__inference_dense_23_layer_call_fn_168458OFG/в,
%в"
 К
inputs         d
к "К         к
E__inference_flatten_7_layer_call_and_return_conditional_losses_168403a7в4
-в*
(К%
inputs         @
к "&в#
К
0         А
Ъ В
*__inference_flatten_7_layer_call_fn_168397T7в4
-в*
(К%
inputs         @
к "К         Ая
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_167352ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_15_layer_call_fn_167358СRвO
HвE
CК@
inputs4                                    
к ";К84                                    я
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_167364ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_16_layer_call_fn_167370СRвO
HвE
CК@
inputs4                                    
к ";К84                                    я
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_167376ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╟
1__inference_max_pooling2d_17_layer_call_fn_167382СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ╬
H__inference_sequential_9_layer_call_and_return_conditional_losses_167972Б&'01:;@AFGHвE
>в;
1К.
conv2d_19_input         @@
p 

 
к "%в"
К
0         
Ъ ╬
H__inference_sequential_9_layer_call_and_return_conditional_losses_168030Б&'01:;@AFGHвE
>в;
1К.
conv2d_19_input         @@
p

 
к "%в"
К
0         
Ъ ─
H__inference_sequential_9_layer_call_and_return_conditional_losses_168129x&'01:;@AFG?в<
5в2
(К%
inputs         @@
p 

 
к "%в"
К
0         
Ъ ─
H__inference_sequential_9_layer_call_and_return_conditional_losses_168187x&'01:;@AFG?в<
5в2
(К%
inputs         @@
p

 
к "%в"
К
0         
Ъ е
-__inference_sequential_9_layer_call_fn_167441t&'01:;@AFGHвE
>в;
1К.
conv2d_19_input         @@
p 

 
к "К         е
-__inference_sequential_9_layer_call_fn_167914t&'01:;@AFGHвE
>в;
1К.
conv2d_19_input         @@
p

 
к "К         Ь
-__inference_sequential_9_layer_call_fn_168245k&'01:;@AFG?в<
5в2
(К%
inputs         @@
p 

 
к "К         Ь
-__inference_sequential_9_layer_call_fn_168303k&'01:;@AFG?в<
5в2
(К%
inputs         @@
p

 
к "К         ├
$__inference_signature_wrapper_168071Ъ&'01:;@AFGSвP
в 
IкF
D
conv2d_19_input1К.
conv2d_19_input         @@"3к0
.
dense_23"К
dense_23         