Èö
û
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
®
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02unknown8Óé
°
,attention_block_2/layer_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,attention_block_2/layer_normalization_5/beta
©
@attention_block_2/layer_normalization_5/beta/Read/ReadVariableOpReadVariableOp,attention_block_2/layer_normalization_5/beta*
_output_shapes
:*
dtype0
²
-attention_block_2/layer_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-attention_block_2/layer_normalization_5/gamma
«
Aattention_block_2/layer_normalization_5/gamma/Read/ReadVariableOpReadVariableOp-attention_block_2/layer_normalization_5/gamma*
_output_shapes
:*
dtype0
°
,attention_block_2/layer_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,attention_block_2/layer_normalization_4/beta
©
@attention_block_2/layer_normalization_4/beta/Read/ReadVariableOpReadVariableOp,attention_block_2/layer_normalization_4/beta*
_output_shapes
:*
dtype0
²
-attention_block_2/layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-attention_block_2/layer_normalization_4/gamma
«
Aattention_block_2/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOp-attention_block_2/layer_normalization_4/gamma*
_output_shapes
:*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
{
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_11/kernel
t
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes
:	*
dtype0
s
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
l
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes	
:*
dtype0
{
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_10/kernel
t
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes
:	*
dtype0
Ô
>attention_block_2/multi_head_attention_2/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*O
shared_name@>attention_block_2/multi_head_attention_2/attention_output/bias
Í
Rattention_block_2/multi_head_attention_2/attention_output/bias/Read/ReadVariableOpReadVariableOp>attention_block_2/multi_head_attention_2/attention_output/bias*
_output_shapes
:*
dtype0
à
@attention_block_2/multi_head_attention_2/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Q
shared_nameB@attention_block_2/multi_head_attention_2/attention_output/kernel
Ù
Tattention_block_2/multi_head_attention_2/attention_output/kernel/Read/ReadVariableOpReadVariableOp@attention_block_2/multi_head_attention_2/attention_output/kernel*"
_output_shapes
:*
dtype0
Â
3attention_block_2/multi_head_attention_2/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*D
shared_name53attention_block_2/multi_head_attention_2/value/bias
»
Gattention_block_2/multi_head_attention_2/value/bias/Read/ReadVariableOpReadVariableOp3attention_block_2/multi_head_attention_2/value/bias*
_output_shapes

:*
dtype0
Ê
5attention_block_2/multi_head_attention_2/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75attention_block_2/multi_head_attention_2/value/kernel
Ã
Iattention_block_2/multi_head_attention_2/value/kernel/Read/ReadVariableOpReadVariableOp5attention_block_2/multi_head_attention_2/value/kernel*"
_output_shapes
:*
dtype0
¾
1attention_block_2/multi_head_attention_2/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*B
shared_name31attention_block_2/multi_head_attention_2/key/bias
·
Eattention_block_2/multi_head_attention_2/key/bias/Read/ReadVariableOpReadVariableOp1attention_block_2/multi_head_attention_2/key/bias*
_output_shapes

:*
dtype0
Æ
3attention_block_2/multi_head_attention_2/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53attention_block_2/multi_head_attention_2/key/kernel
¿
Gattention_block_2/multi_head_attention_2/key/kernel/Read/ReadVariableOpReadVariableOp3attention_block_2/multi_head_attention_2/key/kernel*"
_output_shapes
:*
dtype0
Â
3attention_block_2/multi_head_attention_2/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*D
shared_name53attention_block_2/multi_head_attention_2/query/bias
»
Gattention_block_2/multi_head_attention_2/query/bias/Read/ReadVariableOpReadVariableOp3attention_block_2/multi_head_attention_2/query/bias*
_output_shapes

:*
dtype0
Ê
5attention_block_2/multi_head_attention_2/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75attention_block_2/multi_head_attention_2/query/kernel
Ã
Iattention_block_2/multi_head_attention_2/query/kernel/Read/ReadVariableOpReadVariableOp5attention_block_2/multi_head_attention_2/query/kernel*"
_output_shapes
:*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:*
dtype0
{
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_12/kernel
t
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes
:	*
dtype0
¢
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_3/moving_variance

9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0

!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/moving_mean

5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0

batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_3/beta

.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:*
dtype0

batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_3/gamma

/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:*
dtype0
q
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
j
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes	
:*
dtype0
z
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_9/kernel
s
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel* 
_output_shapes
:
*
dtype0
|
serving_default_input_3Placeholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
â	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3dense_9/kerneldense_9/bias5attention_block_2/multi_head_attention_2/query/kernel3attention_block_2/multi_head_attention_2/query/bias3attention_block_2/multi_head_attention_2/key/kernel1attention_block_2/multi_head_attention_2/key/bias5attention_block_2/multi_head_attention_2/value/kernel3attention_block_2/multi_head_attention_2/value/bias@attention_block_2/multi_head_attention_2/attention_output/kernel>attention_block_2/multi_head_attention_2/attention_output/bias-attention_block_2/layer_normalization_4/gamma,attention_block_2/layer_normalization_4/betadense_10/kerneldense_10/biasdense_11/kerneldense_11/bias-attention_block_2/layer_normalization_5/gamma,attention_block_2/layer_normalization_5/beta%batch_normalization_3/moving_variancebatch_normalization_3/gamma!batch_normalization_3/moving_meanbatch_normalization_3/betadense_12/kerneldense_12/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_141967

NoOpNoOp
Í{
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*{
valueþzBûz Bôz

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
Þ
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$att
%ffn
&
layernorm1
'
layernorm2
(dropout1
)dropout2*
Õ
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0axis
	1gamma
2beta
3moving_mean
4moving_variance*

5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
¦
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias*
º
0
1
C2
D3
E4
F5
G6
H7
I8
J9
K10
L11
M12
N13
O14
P15
Q16
R17
118
219
320
421
A22
B23*
ª
0
1
C2
D3
E4
F5
G6
H7
I8
J9
K10
L11
M12
N13
O14
P15
Q16
R17
118
219
A20
B21*
* 
°
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Xtrace_0
Ytrace_1
Ztrace_2
[trace_3* 
6
\trace_0
]trace_1
^trace_2
_trace_3* 
* 

`serving_default* 

0
1*

0
1*
* 

anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ftrace_0* 

gtrace_0* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

mtrace_0* 

ntrace_0* 
z
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15*
z
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15*
* 

onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

ttrace_0
utrace_1* 

vtrace_0
wtrace_1* 
ý
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses
~_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense*
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Ogamma
Pbeta*
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Qgamma
Rbeta*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
 _random_generator* 
¬
¡	variables
¢trainable_variables
£regularization_losses
¤	keras_api
¥__call__
+¦&call_and_return_all_conditional_losses
§_random_generator* 
 
10
21
32
43*

10
21*
* 

¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

­trace_0
®trace_1* 

¯trace_0
°trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

¶trace_0* 

·trace_0* 

A0
B1*

A0
B1*
* 

¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

½trace_0* 

¾trace_0* 
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5attention_block_2/multi_head_attention_2/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3attention_block_2/multi_head_attention_2/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3attention_block_2/multi_head_attention_2/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1attention_block_2/multi_head_attention_2/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5attention_block_2/multi_head_attention_2/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3attention_block_2/multi_head_attention_2/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE@attention_block_2/multi_head_attention_2/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE>attention_block_2/multi_head_attention_2/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_10/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_10/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_11/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_11/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-attention_block_2/layer_normalization_4/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,attention_block_2/layer_normalization_4/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-attention_block_2/layer_normalization_5/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,attention_block_2/layer_normalization_5/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*

30
41*
5
0
1
2
3
4
5
6*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
$0
%1
&2
'3
(4
)5*
* 
* 
* 
* 
* 
* 
* 
<
C0
D1
E2
F3
G4
H5
I6
J7*
<
C0
D1
E2
F3
G4
H5
I6
J7*
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*
* 
* 
ß
Ä	variables
Åtrainable_variables
Æregularization_losses
Ç	keras_api
È__call__
+É&call_and_return_all_conditional_losses
Êpartial_output_shape
Ëfull_output_shape

Ckernel
Dbias*
ß
Ì	variables
Ítrainable_variables
Îregularization_losses
Ï	keras_api
Ð__call__
+Ñ&call_and_return_all_conditional_losses
Òpartial_output_shape
Ófull_output_shape

Ekernel
Fbias*
ß
Ô	variables
Õtrainable_variables
Öregularization_losses
×	keras_api
Ø__call__
+Ù&call_and_return_all_conditional_losses
Úpartial_output_shape
Ûfull_output_shape

Gkernel
Hbias*

Ü	variables
Ýtrainable_variables
Þregularization_losses
ß	keras_api
à__call__
+á&call_and_return_all_conditional_losses* 
¬
â	variables
ãtrainable_variables
äregularization_losses
å	keras_api
æ__call__
+ç&call_and_return_all_conditional_losses
è_random_generator* 
ß
é	variables
êtrainable_variables
ëregularization_losses
ì	keras_api
í__call__
+î&call_and_return_all_conditional_losses
ïpartial_output_shape
ðfull_output_shape

Ikernel
Jbias*
¬
ñ	variables
òtrainable_variables
óregularization_losses
ô	keras_api
õ__call__
+ö&call_and_return_all_conditional_losses

Kkernel
Lbias*
¬
÷	variables
øtrainable_variables
ùregularization_losses
ú	keras_api
û__call__
+ü&call_and_return_all_conditional_losses

Mkernel
Nbias*
 
K0
L1
M2
N3*
 
K0
L1
M2
N3*
* 

ýnon_trainable_variables
þlayers
ÿmetrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 

O0
P1*

O0
P1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 

Q0
R1*

Q0
R1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¡	variables
¢trainable_variables
£regularization_losses
¥__call__
+¦&call_and_return_all_conditional_losses
'¦"call_and_return_conditional_losses* 
* 
* 
* 

30
41*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
2
~0
1
2
3
4
5*
* 
* 
* 

C0
D1*

C0
D1*
* 

non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
Ä	variables
Åtrainable_variables
Æregularization_losses
È__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses*
* 
* 
* 
* 

E0
F1*

E0
F1*
* 

£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
Ì	variables
Ítrainable_variables
Îregularization_losses
Ð__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses*
* 
* 
* 
* 

G0
H1*

G0
H1*
* 

¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
Ô	variables
Õtrainable_variables
Öregularization_losses
Ø__call__
+Ù&call_and_return_all_conditional_losses
'Ù"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 

­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
Ü	variables
Ýtrainable_variables
Þregularization_losses
à__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
â	variables
ãtrainable_variables
äregularization_losses
æ__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses* 
* 
* 
* 

I0
J1*

I0
J1*
* 

·non_trainable_variables
¸layers
¹metrics
 ºlayer_regularization_losses
»layer_metrics
é	variables
êtrainable_variables
ëregularization_losses
í__call__
+î&call_and_return_all_conditional_losses
'î"call_and_return_conditional_losses*
* 
* 
* 
* 

K0
L1*

K0
L1*
* 

¼non_trainable_variables
½layers
¾metrics
 ¿layer_regularization_losses
Àlayer_metrics
ñ	variables
òtrainable_variables
óregularization_losses
õ__call__
+ö&call_and_return_all_conditional_losses
'ö"call_and_return_conditional_losses*

Átrace_0* 

Âtrace_0* 

M0
N1*

M0
N1*
* 

Ãnon_trainable_variables
Älayers
Åmetrics
 Ælayer_regularization_losses
Çlayer_metrics
÷	variables
øtrainable_variables
ùregularization_losses
û__call__
+ü&call_and_return_all_conditional_losses
'ü"call_and_return_conditional_losses*

Ètrace_0* 

Étrace_0* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOpIattention_block_2/multi_head_attention_2/query/kernel/Read/ReadVariableOpGattention_block_2/multi_head_attention_2/query/bias/Read/ReadVariableOpGattention_block_2/multi_head_attention_2/key/kernel/Read/ReadVariableOpEattention_block_2/multi_head_attention_2/key/bias/Read/ReadVariableOpIattention_block_2/multi_head_attention_2/value/kernel/Read/ReadVariableOpGattention_block_2/multi_head_attention_2/value/bias/Read/ReadVariableOpTattention_block_2/multi_head_attention_2/attention_output/kernel/Read/ReadVariableOpRattention_block_2/multi_head_attention_2/attention_output/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpAattention_block_2/layer_normalization_4/gamma/Read/ReadVariableOp@attention_block_2/layer_normalization_4/beta/Read/ReadVariableOpAattention_block_2/layer_normalization_5/gamma/Read/ReadVariableOp@attention_block_2/layer_normalization_5/beta/Read/ReadVariableOpConst*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_143237
®	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_9/kerneldense_9/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancedense_12/kerneldense_12/bias5attention_block_2/multi_head_attention_2/query/kernel3attention_block_2/multi_head_attention_2/query/bias3attention_block_2/multi_head_attention_2/key/kernel1attention_block_2/multi_head_attention_2/key/bias5attention_block_2/multi_head_attention_2/value/kernel3attention_block_2/multi_head_attention_2/value/bias@attention_block_2/multi_head_attention_2/attention_output/kernel>attention_block_2/multi_head_attention_2/attention_output/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias-attention_block_2/layer_normalization_4/gamma,attention_block_2/layer_normalization_4/beta-attention_block_2/layer_normalization_5/gamma,attention_block_2/layer_normalization_5/beta*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_143319Ý
ý%
ê
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_141036

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ¢
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»
¯
M__inference_attention_block_2_layer_call_and_return_conditional_losses_141213

inputsX
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:J
8multi_head_attention_2_query_add_readvariableop_resource:V
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:H
6multi_head_attention_2_key_add_readvariableop_resource:X
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:J
8multi_head_attention_2_value_add_readvariableop_resource:c
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:Q
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:I
;layer_normalization_4_batchnorm_mul_readvariableop_resource:E
7layer_normalization_4_batchnorm_readvariableop_resource:J
7sequential_2_dense_10_tensordot_readvariableop_resource:	D
5sequential_2_dense_10_biasadd_readvariableop_resource:	J
7sequential_2_dense_11_tensordot_readvariableop_resource:	C
5sequential_2_dense_11_biasadd_readvariableop_resource:I
;layer_normalization_5_batchnorm_mul_readvariableop_resource:E
7layer_normalization_5_batchnorm_readvariableop_resource:
identity¢.layer_normalization_4/batchnorm/ReadVariableOp¢2layer_normalization_4/batchnorm/mul/ReadVariableOp¢.layer_normalization_5/batchnorm/ReadVariableOp¢2layer_normalization_5/batchnorm/mul/ReadVariableOp¢:multi_head_attention_2/attention_output/add/ReadVariableOp¢Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_2/key/add/ReadVariableOp¢7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/query/add/ReadVariableOp¢9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/value/add/ReadVariableOp¢9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢,sequential_2/dense_10/BiasAdd/ReadVariableOp¢.sequential_2/dense_10/Tensordot/ReadVariableOp¢,sequential_2/dense_11/BiasAdd/ReadVariableOp¢.sequential_2/dense_11/Tensordot/ReadVariableOpÀ
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ß
*multi_head_attention_2/query/einsum/EinsumEinsuminputsAmulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abde¨
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:*
dtype0Ñ
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¼
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Û
(multi_head_attention_2/key/einsum/EinsumEinsuminputs?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abde¤
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:*
dtype0Ë
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ß
*multi_head_attention_2/value/einsum/EinsumEinsuminputsAmulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abde¨
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:*
dtype0Ñ
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¨
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
equationaecd,abcd->acbe
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
'multi_head_attention_2/dropout/IdentityIdentity0multi_head_attention_2/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ê
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/dropout/Identity:output:0$multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabcd,cde->abeº
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0î
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_4/IdentityIdentity/multi_head_attention_2/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
addAddV2inputsdropout_4/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_4/moments/meanMeanadd:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ç
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_4/batchnorm/mul_1Muladd:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Ã
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
.sequential_2/dense_10/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0n
$sequential_2/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_10/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_2/dense_10/Tensordot/GatherV2GatherV2.sequential_2/dense_10/Tensordot/Shape:output:0-sequential_2/dense_10/Tensordot/free:output:06sequential_2/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_2/dense_10/Tensordot/GatherV2_1GatherV2.sequential_2/dense_10/Tensordot/Shape:output:0-sequential_2/dense_10/Tensordot/axes:output:08sequential_2/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_2/dense_10/Tensordot/ProdProd1sequential_2/dense_10/Tensordot/GatherV2:output:0.sequential_2/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_2/dense_10/Tensordot/Prod_1Prod3sequential_2/dense_10/Tensordot/GatherV2_1:output:00sequential_2/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_2/dense_10/Tensordot/concatConcatV2-sequential_2/dense_10/Tensordot/free:output:0-sequential_2/dense_10/Tensordot/axes:output:04sequential_2/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_2/dense_10/Tensordot/stackPack-sequential_2/dense_10/Tensordot/Prod:output:0/sequential_2/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:È
)sequential_2/dense_10/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0/sequential_2/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
'sequential_2/dense_10/Tensordot/ReshapeReshape-sequential_2/dense_10/Tensordot/transpose:y:0.sequential_2/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÍ
&sequential_2/dense_10/Tensordot/MatMulMatMul0sequential_2/dense_10/Tensordot/Reshape:output:06sequential_2/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
'sequential_2/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:o
-sequential_2/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_2/dense_10/Tensordot/concat_1ConcatV21sequential_2/dense_10/Tensordot/GatherV2:output:00sequential_2/dense_10/Tensordot/Const_2:output:06sequential_2/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Æ
sequential_2/dense_10/TensordotReshape0sequential_2/dense_10/Tensordot/MatMul:product:01sequential_2/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,sequential_2/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¿
sequential_2/dense_10/BiasAddBiasAdd(sequential_2/dense_10/Tensordot:output:04sequential_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_2/dense_10/ReluRelu&sequential_2/dense_10/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
.sequential_2/dense_11/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0n
$sequential_2/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_2/dense_11/Tensordot/ShapeShape(sequential_2/dense_10/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_2/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_2/dense_11/Tensordot/GatherV2GatherV2.sequential_2/dense_11/Tensordot/Shape:output:0-sequential_2/dense_11/Tensordot/free:output:06sequential_2/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_2/dense_11/Tensordot/GatherV2_1GatherV2.sequential_2/dense_11/Tensordot/Shape:output:0-sequential_2/dense_11/Tensordot/axes:output:08sequential_2/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_2/dense_11/Tensordot/ProdProd1sequential_2/dense_11/Tensordot/GatherV2:output:0.sequential_2/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_2/dense_11/Tensordot/Prod_1Prod3sequential_2/dense_11/Tensordot/GatherV2_1:output:00sequential_2/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_2/dense_11/Tensordot/concatConcatV2-sequential_2/dense_11/Tensordot/free:output:0-sequential_2/dense_11/Tensordot/axes:output:04sequential_2/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_2/dense_11/Tensordot/stackPack-sequential_2/dense_11/Tensordot/Prod:output:0/sequential_2/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:È
)sequential_2/dense_11/Tensordot/transpose	Transpose(sequential_2/dense_10/Relu:activations:0/sequential_2/dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
'sequential_2/dense_11/Tensordot/ReshapeReshape-sequential_2/dense_11/Tensordot/transpose:y:0.sequential_2/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_2/dense_11/Tensordot/MatMulMatMul0sequential_2/dense_11/Tensordot/Reshape:output:06sequential_2/dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
'sequential_2/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:o
-sequential_2/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_2/dense_11/Tensordot/concat_1ConcatV21sequential_2/dense_11/Tensordot/GatherV2:output:00sequential_2/dense_11/Tensordot/Const_2:output:06sequential_2/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_2/dense_11/TensordotReshape0sequential_2/dense_11/Tensordot/MatMul:product:01sequential_2/dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,sequential_2/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
sequential_2/dense_11/BiasAddBiasAdd(sequential_2/dense_11/Tensordot:output:04sequential_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
dropout_5/IdentityIdentity&sequential_2/dense_11/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
add_1AddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_5/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_5/moments/meanMean	add_1:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
/layer_normalization_5/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ç
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_5/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Ã
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
IdentityIdentity)layer_normalization_5/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp-^sequential_2/dense_10/BiasAdd/ReadVariableOp/^sequential_2/dense_10/Tensordot/ReadVariableOp-^sequential_2/dense_11/BiasAdd/ReadVariableOp/^sequential_2/dense_11/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : : : : : : : : : 2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2\
,sequential_2/dense_10/BiasAdd/ReadVariableOp,sequential_2/dense_10/BiasAdd/ReadVariableOp2`
.sequential_2/dense_10/Tensordot/ReadVariableOp.sequential_2/dense_10/Tensordot/ReadVariableOp2\
,sequential_2/dense_11/BiasAdd/ReadVariableOp,sequential_2/dense_11/BiasAdd/ReadVariableOp2`
.sequential_2/dense_11/Tensordot/ReadVariableOp.sequential_2/dense_11/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ò
¼
H__inference_sequential_2_layer_call_and_return_conditional_losses_140951
dense_10_input"
dense_10_140940:	
dense_10_140942:	"
dense_11_140945:	
dense_11_140947:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall
 dense_10/StatefulPartitionedCallStatefulPartitionedCalldense_10_inputdense_10_140940dense_10_140942*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_140810
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_140945dense_11_140947*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_140846|
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(
_user_specified_namedense_10_input
¬
F
*__inference_flatten_3_layer_call_fn_142898

inputs
identity´
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_141262a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
È

)__inference_dense_12_layer_call_fn_142913

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_141274o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»
¯
M__inference_attention_block_2_layer_call_and_return_conditional_losses_142673

inputsX
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:J
8multi_head_attention_2_query_add_readvariableop_resource:V
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:H
6multi_head_attention_2_key_add_readvariableop_resource:X
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:J
8multi_head_attention_2_value_add_readvariableop_resource:c
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:Q
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:I
;layer_normalization_4_batchnorm_mul_readvariableop_resource:E
7layer_normalization_4_batchnorm_readvariableop_resource:J
7sequential_2_dense_10_tensordot_readvariableop_resource:	D
5sequential_2_dense_10_biasadd_readvariableop_resource:	J
7sequential_2_dense_11_tensordot_readvariableop_resource:	C
5sequential_2_dense_11_biasadd_readvariableop_resource:I
;layer_normalization_5_batchnorm_mul_readvariableop_resource:E
7layer_normalization_5_batchnorm_readvariableop_resource:
identity¢.layer_normalization_4/batchnorm/ReadVariableOp¢2layer_normalization_4/batchnorm/mul/ReadVariableOp¢.layer_normalization_5/batchnorm/ReadVariableOp¢2layer_normalization_5/batchnorm/mul/ReadVariableOp¢:multi_head_attention_2/attention_output/add/ReadVariableOp¢Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_2/key/add/ReadVariableOp¢7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/query/add/ReadVariableOp¢9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/value/add/ReadVariableOp¢9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢,sequential_2/dense_10/BiasAdd/ReadVariableOp¢.sequential_2/dense_10/Tensordot/ReadVariableOp¢,sequential_2/dense_11/BiasAdd/ReadVariableOp¢.sequential_2/dense_11/Tensordot/ReadVariableOpÀ
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ß
*multi_head_attention_2/query/einsum/EinsumEinsuminputsAmulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abde¨
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:*
dtype0Ñ
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¼
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Û
(multi_head_attention_2/key/einsum/EinsumEinsuminputs?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abde¤
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:*
dtype0Ë
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ß
*multi_head_attention_2/value/einsum/EinsumEinsuminputsAmulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abde¨
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:*
dtype0Ñ
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¨
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
equationaecd,abcd->acbe
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
'multi_head_attention_2/dropout/IdentityIdentity0multi_head_attention_2/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ê
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/dropout/Identity:output:0$multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabcd,cde->abeº
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0î
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_4/IdentityIdentity/multi_head_attention_2/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
addAddV2inputsdropout_4/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_4/moments/meanMeanadd:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ç
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_4/batchnorm/mul_1Muladd:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Ã
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
.sequential_2/dense_10/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0n
$sequential_2/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_10/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_2/dense_10/Tensordot/GatherV2GatherV2.sequential_2/dense_10/Tensordot/Shape:output:0-sequential_2/dense_10/Tensordot/free:output:06sequential_2/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_2/dense_10/Tensordot/GatherV2_1GatherV2.sequential_2/dense_10/Tensordot/Shape:output:0-sequential_2/dense_10/Tensordot/axes:output:08sequential_2/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_2/dense_10/Tensordot/ProdProd1sequential_2/dense_10/Tensordot/GatherV2:output:0.sequential_2/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_2/dense_10/Tensordot/Prod_1Prod3sequential_2/dense_10/Tensordot/GatherV2_1:output:00sequential_2/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_2/dense_10/Tensordot/concatConcatV2-sequential_2/dense_10/Tensordot/free:output:0-sequential_2/dense_10/Tensordot/axes:output:04sequential_2/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_2/dense_10/Tensordot/stackPack-sequential_2/dense_10/Tensordot/Prod:output:0/sequential_2/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:È
)sequential_2/dense_10/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0/sequential_2/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
'sequential_2/dense_10/Tensordot/ReshapeReshape-sequential_2/dense_10/Tensordot/transpose:y:0.sequential_2/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÍ
&sequential_2/dense_10/Tensordot/MatMulMatMul0sequential_2/dense_10/Tensordot/Reshape:output:06sequential_2/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
'sequential_2/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:o
-sequential_2/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_2/dense_10/Tensordot/concat_1ConcatV21sequential_2/dense_10/Tensordot/GatherV2:output:00sequential_2/dense_10/Tensordot/Const_2:output:06sequential_2/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Æ
sequential_2/dense_10/TensordotReshape0sequential_2/dense_10/Tensordot/MatMul:product:01sequential_2/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,sequential_2/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¿
sequential_2/dense_10/BiasAddBiasAdd(sequential_2/dense_10/Tensordot:output:04sequential_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_2/dense_10/ReluRelu&sequential_2/dense_10/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
.sequential_2/dense_11/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0n
$sequential_2/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_2/dense_11/Tensordot/ShapeShape(sequential_2/dense_10/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_2/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_2/dense_11/Tensordot/GatherV2GatherV2.sequential_2/dense_11/Tensordot/Shape:output:0-sequential_2/dense_11/Tensordot/free:output:06sequential_2/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_2/dense_11/Tensordot/GatherV2_1GatherV2.sequential_2/dense_11/Tensordot/Shape:output:0-sequential_2/dense_11/Tensordot/axes:output:08sequential_2/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_2/dense_11/Tensordot/ProdProd1sequential_2/dense_11/Tensordot/GatherV2:output:0.sequential_2/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_2/dense_11/Tensordot/Prod_1Prod3sequential_2/dense_11/Tensordot/GatherV2_1:output:00sequential_2/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_2/dense_11/Tensordot/concatConcatV2-sequential_2/dense_11/Tensordot/free:output:0-sequential_2/dense_11/Tensordot/axes:output:04sequential_2/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_2/dense_11/Tensordot/stackPack-sequential_2/dense_11/Tensordot/Prod:output:0/sequential_2/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:È
)sequential_2/dense_11/Tensordot/transpose	Transpose(sequential_2/dense_10/Relu:activations:0/sequential_2/dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
'sequential_2/dense_11/Tensordot/ReshapeReshape-sequential_2/dense_11/Tensordot/transpose:y:0.sequential_2/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_2/dense_11/Tensordot/MatMulMatMul0sequential_2/dense_11/Tensordot/Reshape:output:06sequential_2/dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
'sequential_2/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:o
-sequential_2/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_2/dense_11/Tensordot/concat_1ConcatV21sequential_2/dense_11/Tensordot/GatherV2:output:00sequential_2/dense_11/Tensordot/Const_2:output:06sequential_2/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_2/dense_11/TensordotReshape0sequential_2/dense_11/Tensordot/MatMul:product:01sequential_2/dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,sequential_2/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
sequential_2/dense_11/BiasAddBiasAdd(sequential_2/dense_11/Tensordot:output:04sequential_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
dropout_5/IdentityIdentity&sequential_2/dense_11/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
add_1AddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_5/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_5/moments/meanMean	add_1:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
/layer_normalization_5/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ç
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_5/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Ã
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
IdentityIdentity)layer_normalization_5/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp-^sequential_2/dense_10/BiasAdd/ReadVariableOp/^sequential_2/dense_10/Tensordot/ReadVariableOp-^sequential_2/dense_11/BiasAdd/ReadVariableOp/^sequential_2/dense_11/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : : : : : : : : : 2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2\
,sequential_2/dense_10/BiasAdd/ReadVariableOp,sequential_2/dense_10/BiasAdd/ReadVariableOp2`
.sequential_2/dense_10/Tensordot/ReadVariableOp.sequential_2/dense_10/Tensordot/ReadVariableOp2\
,sequential_2/dense_11/BiasAdd/ReadVariableOp,sequential_2/dense_11/BiasAdd/ReadVariableOp2`
.sequential_2/dense_11/Tensordot/ReadVariableOp.sequential_2/dense_11/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÃÉ
¯
M__inference_attention_block_2_layer_call_and_return_conditional_losses_142813

inputsX
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:J
8multi_head_attention_2_query_add_readvariableop_resource:V
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:H
6multi_head_attention_2_key_add_readvariableop_resource:X
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:J
8multi_head_attention_2_value_add_readvariableop_resource:c
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:Q
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:I
;layer_normalization_4_batchnorm_mul_readvariableop_resource:E
7layer_normalization_4_batchnorm_readvariableop_resource:J
7sequential_2_dense_10_tensordot_readvariableop_resource:	D
5sequential_2_dense_10_biasadd_readvariableop_resource:	J
7sequential_2_dense_11_tensordot_readvariableop_resource:	C
5sequential_2_dense_11_biasadd_readvariableop_resource:I
;layer_normalization_5_batchnorm_mul_readvariableop_resource:E
7layer_normalization_5_batchnorm_readvariableop_resource:
identity¢.layer_normalization_4/batchnorm/ReadVariableOp¢2layer_normalization_4/batchnorm/mul/ReadVariableOp¢.layer_normalization_5/batchnorm/ReadVariableOp¢2layer_normalization_5/batchnorm/mul/ReadVariableOp¢:multi_head_attention_2/attention_output/add/ReadVariableOp¢Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_2/key/add/ReadVariableOp¢7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/query/add/ReadVariableOp¢9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/value/add/ReadVariableOp¢9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢,sequential_2/dense_10/BiasAdd/ReadVariableOp¢.sequential_2/dense_10/Tensordot/ReadVariableOp¢,sequential_2/dense_11/BiasAdd/ReadVariableOp¢.sequential_2/dense_11/Tensordot/ReadVariableOpÀ
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ß
*multi_head_attention_2/query/einsum/EinsumEinsuminputsAmulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abde¨
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:*
dtype0Ñ
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¼
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Û
(multi_head_attention_2/key/einsum/EinsumEinsuminputs?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abde¤
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:*
dtype0Ë
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ß
*multi_head_attention_2/value/einsum/EinsumEinsuminputsAmulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abde¨
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:*
dtype0Ñ
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¨
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
equationaecd,abcd->acbe
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ê
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/softmax/Softmax:softmax:0$multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabcd,cde->abeº
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0î
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¥
dropout_4/dropout/MulMul/multi_head_attention_2/attention_output/add:z:0 dropout_4/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
dropout_4/dropout/ShapeShape/multi_head_attention_2/attention_output/add:z:0*
T0*
_output_shapes
:¤
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=È
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
addAddV2inputsdropout_4/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_4/moments/meanMeanadd:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ç
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_4/batchnorm/mul_1Muladd:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Ã
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
.sequential_2/dense_10/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0n
$sequential_2/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_10/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_2/dense_10/Tensordot/GatherV2GatherV2.sequential_2/dense_10/Tensordot/Shape:output:0-sequential_2/dense_10/Tensordot/free:output:06sequential_2/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_2/dense_10/Tensordot/GatherV2_1GatherV2.sequential_2/dense_10/Tensordot/Shape:output:0-sequential_2/dense_10/Tensordot/axes:output:08sequential_2/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_2/dense_10/Tensordot/ProdProd1sequential_2/dense_10/Tensordot/GatherV2:output:0.sequential_2/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_2/dense_10/Tensordot/Prod_1Prod3sequential_2/dense_10/Tensordot/GatherV2_1:output:00sequential_2/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_2/dense_10/Tensordot/concatConcatV2-sequential_2/dense_10/Tensordot/free:output:0-sequential_2/dense_10/Tensordot/axes:output:04sequential_2/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_2/dense_10/Tensordot/stackPack-sequential_2/dense_10/Tensordot/Prod:output:0/sequential_2/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:È
)sequential_2/dense_10/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0/sequential_2/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
'sequential_2/dense_10/Tensordot/ReshapeReshape-sequential_2/dense_10/Tensordot/transpose:y:0.sequential_2/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÍ
&sequential_2/dense_10/Tensordot/MatMulMatMul0sequential_2/dense_10/Tensordot/Reshape:output:06sequential_2/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
'sequential_2/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:o
-sequential_2/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_2/dense_10/Tensordot/concat_1ConcatV21sequential_2/dense_10/Tensordot/GatherV2:output:00sequential_2/dense_10/Tensordot/Const_2:output:06sequential_2/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Æ
sequential_2/dense_10/TensordotReshape0sequential_2/dense_10/Tensordot/MatMul:product:01sequential_2/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,sequential_2/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¿
sequential_2/dense_10/BiasAddBiasAdd(sequential_2/dense_10/Tensordot:output:04sequential_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_2/dense_10/ReluRelu&sequential_2/dense_10/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
.sequential_2/dense_11/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0n
$sequential_2/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_2/dense_11/Tensordot/ShapeShape(sequential_2/dense_10/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_2/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_2/dense_11/Tensordot/GatherV2GatherV2.sequential_2/dense_11/Tensordot/Shape:output:0-sequential_2/dense_11/Tensordot/free:output:06sequential_2/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_2/dense_11/Tensordot/GatherV2_1GatherV2.sequential_2/dense_11/Tensordot/Shape:output:0-sequential_2/dense_11/Tensordot/axes:output:08sequential_2/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_2/dense_11/Tensordot/ProdProd1sequential_2/dense_11/Tensordot/GatherV2:output:0.sequential_2/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_2/dense_11/Tensordot/Prod_1Prod3sequential_2/dense_11/Tensordot/GatherV2_1:output:00sequential_2/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_2/dense_11/Tensordot/concatConcatV2-sequential_2/dense_11/Tensordot/free:output:0-sequential_2/dense_11/Tensordot/axes:output:04sequential_2/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_2/dense_11/Tensordot/stackPack-sequential_2/dense_11/Tensordot/Prod:output:0/sequential_2/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:È
)sequential_2/dense_11/Tensordot/transpose	Transpose(sequential_2/dense_10/Relu:activations:0/sequential_2/dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
'sequential_2/dense_11/Tensordot/ReshapeReshape-sequential_2/dense_11/Tensordot/transpose:y:0.sequential_2/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_2/dense_11/Tensordot/MatMulMatMul0sequential_2/dense_11/Tensordot/Reshape:output:06sequential_2/dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
'sequential_2/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:o
-sequential_2/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_2/dense_11/Tensordot/concat_1ConcatV21sequential_2/dense_11/Tensordot/GatherV2:output:00sequential_2/dense_11/Tensordot/Const_2:output:06sequential_2/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_2/dense_11/TensordotReshape0sequential_2/dense_11/Tensordot/MatMul:product:01sequential_2/dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,sequential_2/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
sequential_2/dense_11/BiasAddBiasAdd(sequential_2/dense_11/Tensordot:output:04sequential_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_5/dropout/MulMul&sequential_2/dense_11/BiasAdd:output:0 dropout_5/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
dropout_5/dropout/ShapeShape&sequential_2/dense_11/BiasAdd:output:0*
T0*
_output_shapes
:¤
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=È
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
add_1AddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_5/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_5/moments/meanMean	add_1:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
/layer_normalization_5/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ç
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_5/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Ã
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
IdentityIdentity)layer_normalization_5/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp-^sequential_2/dense_10/BiasAdd/ReadVariableOp/^sequential_2/dense_10/Tensordot/ReadVariableOp-^sequential_2/dense_11/BiasAdd/ReadVariableOp/^sequential_2/dense_11/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : : : : : : : : : 2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2\
,sequential_2/dense_10/BiasAdd/ReadVariableOp,sequential_2/dense_10/BiasAdd/ReadVariableOp2`
.sequential_2/dense_10/Tensordot/ReadVariableOp.sequential_2/dense_10/Tensordot/ReadVariableOp2\
,sequential_2/dense_11/BiasAdd/ReadVariableOp,sequential_2/dense_11/BiasAdd/ReadVariableOp2`
.sequential_2/dense_11/Tensordot/ReadVariableOp.sequential_2/dense_11/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
È'
ñ	
C__inference_model_3_layer_call_and_return_conditional_losses_141854
input_3"
dense_9_141799:

dense_9_141801:	.
attention_block_2_141805:*
attention_block_2_141807:.
attention_block_2_141809:*
attention_block_2_141811:.
attention_block_2_141813:*
attention_block_2_141815:.
attention_block_2_141817:&
attention_block_2_141819:&
attention_block_2_141821:&
attention_block_2_141823:+
attention_block_2_141825:	'
attention_block_2_141827:	+
attention_block_2_141829:	&
attention_block_2_141831:&
attention_block_2_141833:&
attention_block_2_141835:*
batch_normalization_3_141838:*
batch_normalization_3_141840:*
batch_normalization_3_141842:*
batch_normalization_3_141844:"
dense_12_141848:	
dense_12_141850:
identity¢)attention_block_2/StatefulPartitionedCall¢-batch_normalization_3/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallñ
dense_9/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_9_141799dense_9_141801*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_141065ã
reshape_3/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_3_layer_call_and_return_conditional_losses_141084¿
)attention_block_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0attention_block_2_141805attention_block_2_141807attention_block_2_141809attention_block_2_141811attention_block_2_141813attention_block_2_141815attention_block_2_141817attention_block_2_141819attention_block_2_141821attention_block_2_141823attention_block_2_141825attention_block_2_141827attention_block_2_141829attention_block_2_141831attention_block_2_141833attention_block_2_141835*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_attention_block_2_layer_call_and_return_conditional_losses_141213
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall2attention_block_2/StatefulPartitionedCall:output:0batch_normalization_3_141838batch_normalization_3_141840batch_normalization_3_141842batch_normalization_3_141844*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_140989î
flatten_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_141262
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_12_141848dense_12_141850*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_141274x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿç
NoOpNoOp*^attention_block_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2V
)attention_block_2/StatefulPartitionedCall)attention_block_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Q M
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
ÃÉ
¯
M__inference_attention_block_2_layer_call_and_return_conditional_losses_141528

inputsX
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:J
8multi_head_attention_2_query_add_readvariableop_resource:V
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:H
6multi_head_attention_2_key_add_readvariableop_resource:X
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:J
8multi_head_attention_2_value_add_readvariableop_resource:c
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:Q
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:I
;layer_normalization_4_batchnorm_mul_readvariableop_resource:E
7layer_normalization_4_batchnorm_readvariableop_resource:J
7sequential_2_dense_10_tensordot_readvariableop_resource:	D
5sequential_2_dense_10_biasadd_readvariableop_resource:	J
7sequential_2_dense_11_tensordot_readvariableop_resource:	C
5sequential_2_dense_11_biasadd_readvariableop_resource:I
;layer_normalization_5_batchnorm_mul_readvariableop_resource:E
7layer_normalization_5_batchnorm_readvariableop_resource:
identity¢.layer_normalization_4/batchnorm/ReadVariableOp¢2layer_normalization_4/batchnorm/mul/ReadVariableOp¢.layer_normalization_5/batchnorm/ReadVariableOp¢2layer_normalization_5/batchnorm/mul/ReadVariableOp¢:multi_head_attention_2/attention_output/add/ReadVariableOp¢Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_2/key/add/ReadVariableOp¢7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/query/add/ReadVariableOp¢9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_2/value/add/ReadVariableOp¢9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢,sequential_2/dense_10/BiasAdd/ReadVariableOp¢.sequential_2/dense_10/Tensordot/ReadVariableOp¢,sequential_2/dense_11/BiasAdd/ReadVariableOp¢.sequential_2/dense_11/Tensordot/ReadVariableOpÀ
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ß
*multi_head_attention_2/query/einsum/EinsumEinsuminputsAmulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abde¨
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:*
dtype0Ñ
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¼
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Û
(multi_head_attention_2/key/einsum/EinsumEinsuminputs?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abde¤
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:*
dtype0Ë
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0ß
*multi_head_attention_2/value/einsum/EinsumEinsuminputsAmulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abde¨
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:*
dtype0Ñ
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¨
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
equationaecd,abcd->acbe
&multi_head_attention_2/softmax/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ê
&multi_head_attention_2/einsum_1/EinsumEinsum0multi_head_attention_2/softmax/Softmax:softmax:0$multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabcd,cde->abeº
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0î
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¥
dropout_4/dropout/MulMul/multi_head_attention_2/attention_output/add:z:0 dropout_4/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
dropout_4/dropout/ShapeShape/multi_head_attention_2/attention_output/add:z:0*
T0*
_output_shapes
:¤
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=È
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
addAddV2inputsdropout_4/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¹
"layer_normalization_4/moments/meanMeanadd:z:0=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ç
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_4/batchnorm/mul_1Muladd:z:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Ã
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
.sequential_2/dense_10/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0n
$sequential_2/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ~
%sequential_2/dense_10/Tensordot/ShapeShape)layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:o
-sequential_2/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_2/dense_10/Tensordot/GatherV2GatherV2.sequential_2/dense_10/Tensordot/Shape:output:0-sequential_2/dense_10/Tensordot/free:output:06sequential_2/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_2/dense_10/Tensordot/GatherV2_1GatherV2.sequential_2/dense_10/Tensordot/Shape:output:0-sequential_2/dense_10/Tensordot/axes:output:08sequential_2/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_2/dense_10/Tensordot/ProdProd1sequential_2/dense_10/Tensordot/GatherV2:output:0.sequential_2/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_2/dense_10/Tensordot/Prod_1Prod3sequential_2/dense_10/Tensordot/GatherV2_1:output:00sequential_2/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_2/dense_10/Tensordot/concatConcatV2-sequential_2/dense_10/Tensordot/free:output:0-sequential_2/dense_10/Tensordot/axes:output:04sequential_2/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_2/dense_10/Tensordot/stackPack-sequential_2/dense_10/Tensordot/Prod:output:0/sequential_2/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:È
)sequential_2/dense_10/Tensordot/transpose	Transpose)layer_normalization_4/batchnorm/add_1:z:0/sequential_2/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
'sequential_2/dense_10/Tensordot/ReshapeReshape-sequential_2/dense_10/Tensordot/transpose:y:0.sequential_2/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÍ
&sequential_2/dense_10/Tensordot/MatMulMatMul0sequential_2/dense_10/Tensordot/Reshape:output:06sequential_2/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
'sequential_2/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:o
-sequential_2/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_2/dense_10/Tensordot/concat_1ConcatV21sequential_2/dense_10/Tensordot/GatherV2:output:00sequential_2/dense_10/Tensordot/Const_2:output:06sequential_2/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Æ
sequential_2/dense_10/TensordotReshape0sequential_2/dense_10/Tensordot/MatMul:product:01sequential_2/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,sequential_2/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¿
sequential_2/dense_10/BiasAddBiasAdd(sequential_2/dense_10/Tensordot:output:04sequential_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_2/dense_10/ReluRelu&sequential_2/dense_10/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
.sequential_2/dense_11/Tensordot/ReadVariableOpReadVariableOp7sequential_2_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0n
$sequential_2/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:u
$sequential_2/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       }
%sequential_2/dense_11/Tensordot/ShapeShape(sequential_2/dense_10/Relu:activations:0*
T0*
_output_shapes
:o
-sequential_2/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_2/dense_11/Tensordot/GatherV2GatherV2.sequential_2/dense_11/Tensordot/Shape:output:0-sequential_2/dense_11/Tensordot/free:output:06sequential_2/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
/sequential_2/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_2/dense_11/Tensordot/GatherV2_1GatherV2.sequential_2/dense_11/Tensordot/Shape:output:0-sequential_2/dense_11/Tensordot/axes:output:08sequential_2/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
%sequential_2/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
$sequential_2/dense_11/Tensordot/ProdProd1sequential_2/dense_11/Tensordot/GatherV2:output:0.sequential_2/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: q
'sequential_2/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
&sequential_2/dense_11/Tensordot/Prod_1Prod3sequential_2/dense_11/Tensordot/GatherV2_1:output:00sequential_2/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: m
+sequential_2/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ô
&sequential_2/dense_11/Tensordot/concatConcatV2-sequential_2/dense_11/Tensordot/free:output:0-sequential_2/dense_11/Tensordot/axes:output:04sequential_2/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:»
%sequential_2/dense_11/Tensordot/stackPack-sequential_2/dense_11/Tensordot/Prod:output:0/sequential_2/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:È
)sequential_2/dense_11/Tensordot/transpose	Transpose(sequential_2/dense_10/Relu:activations:0/sequential_2/dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
'sequential_2/dense_11/Tensordot/ReshapeReshape-sequential_2/dense_11/Tensordot/transpose:y:0.sequential_2/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
&sequential_2/dense_11/Tensordot/MatMulMatMul0sequential_2/dense_11/Tensordot/Reshape:output:06sequential_2/dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
'sequential_2/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:o
-sequential_2/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
(sequential_2/dense_11/Tensordot/concat_1ConcatV21sequential_2/dense_11/Tensordot/GatherV2:output:00sequential_2/dense_11/Tensordot/Const_2:output:06sequential_2/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Å
sequential_2/dense_11/TensordotReshape0sequential_2/dense_11/Tensordot/MatMul:product:01sequential_2/dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,sequential_2/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
sequential_2/dense_11/BiasAddBiasAdd(sequential_2/dense_11/Tensordot:output:04sequential_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
dropout_5/dropout/MulMul&sequential_2/dense_11/BiasAdd:output:0 dropout_5/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
dropout_5/dropout/ShapeShape&sequential_2/dense_11/BiasAdd:output:0*
T0*
_output_shapes
:¤
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=È
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
add_1AddV2)layer_normalization_4/batchnorm/add_1:z:0dropout_5/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
"layer_normalization_5/moments/meanMean	add_1:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
/layer_normalization_5/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ç
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%layer_normalization_5/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Ã
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
IdentityIdentity)layer_normalization_5/batchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp-^sequential_2/dense_10/BiasAdd/ReadVariableOp/^sequential_2/dense_10/Tensordot/ReadVariableOp-^sequential_2/dense_11/BiasAdd/ReadVariableOp/^sequential_2/dense_11/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : : : : : : : : : 2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2\
,sequential_2/dense_10/BiasAdd/ReadVariableOp,sequential_2/dense_10/BiasAdd/ReadVariableOp2`
.sequential_2/dense_10/Tensordot/ReadVariableOp.sequential_2/dense_10/Tensordot/ReadVariableOp2\
,sequential_2/dense_11/BiasAdd/ReadVariableOp,sequential_2/dense_11/BiasAdd/ReadVariableOp2`
.sequential_2/dense_11/Tensordot/ReadVariableOp.sequential_2/dense_11/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


(__inference_model_3_layer_call_fn_141796
input_3
unknown:

	unknown_0:	
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:	

unknown_22:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_141692o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
´
Ó
-__inference_sequential_2_layer_call_fn_142936

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_140853s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ê

(__inference_dense_9_layer_call_fn_142443

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_141065p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
 
!__inference__wrapped_model_140772
input_3B
.model_3_dense_9_matmul_readvariableop_resource:
>
/model_3_dense_9_biasadd_readvariableop_resource:	r
\model_3_attention_block_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource:d
Rmodel_3_attention_block_2_multi_head_attention_2_query_add_readvariableop_resource:p
Zmodel_3_attention_block_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource:b
Pmodel_3_attention_block_2_multi_head_attention_2_key_add_readvariableop_resource:r
\model_3_attention_block_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource:d
Rmodel_3_attention_block_2_multi_head_attention_2_value_add_readvariableop_resource:}
gmodel_3_attention_block_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:k
]model_3_attention_block_2_multi_head_attention_2_attention_output_add_readvariableop_resource:c
Umodel_3_attention_block_2_layer_normalization_4_batchnorm_mul_readvariableop_resource:_
Qmodel_3_attention_block_2_layer_normalization_4_batchnorm_readvariableop_resource:d
Qmodel_3_attention_block_2_sequential_2_dense_10_tensordot_readvariableop_resource:	^
Omodel_3_attention_block_2_sequential_2_dense_10_biasadd_readvariableop_resource:	d
Qmodel_3_attention_block_2_sequential_2_dense_11_tensordot_readvariableop_resource:	]
Omodel_3_attention_block_2_sequential_2_dense_11_biasadd_readvariableop_resource:c
Umodel_3_attention_block_2_layer_normalization_5_batchnorm_mul_readvariableop_resource:_
Qmodel_3_attention_block_2_layer_normalization_5_batchnorm_readvariableop_resource:M
?model_3_batch_normalization_3_batchnorm_readvariableop_resource:Q
Cmodel_3_batch_normalization_3_batchnorm_mul_readvariableop_resource:O
Amodel_3_batch_normalization_3_batchnorm_readvariableop_1_resource:O
Amodel_3_batch_normalization_3_batchnorm_readvariableop_2_resource:B
/model_3_dense_12_matmul_readvariableop_resource:	>
0model_3_dense_12_biasadd_readvariableop_resource:
identity¢Hmodel_3/attention_block_2/layer_normalization_4/batchnorm/ReadVariableOp¢Lmodel_3/attention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp¢Hmodel_3/attention_block_2/layer_normalization_5/batchnorm/ReadVariableOp¢Lmodel_3/attention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp¢Tmodel_3/attention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp¢^model_3/attention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢Gmodel_3/attention_block_2/multi_head_attention_2/key/add/ReadVariableOp¢Qmodel_3/attention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢Imodel_3/attention_block_2/multi_head_attention_2/query/add/ReadVariableOp¢Smodel_3/attention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢Imodel_3/attention_block_2/multi_head_attention_2/value/add/ReadVariableOp¢Smodel_3/attention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢Fmodel_3/attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOp¢Hmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp¢Fmodel_3/attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOp¢Hmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp¢6model_3/batch_normalization_3/batchnorm/ReadVariableOp¢8model_3/batch_normalization_3/batchnorm/ReadVariableOp_1¢8model_3/batch_normalization_3/batchnorm/ReadVariableOp_2¢:model_3/batch_normalization_3/batchnorm/mul/ReadVariableOp¢'model_3/dense_12/BiasAdd/ReadVariableOp¢&model_3/dense_12/MatMul/ReadVariableOp¢&model_3/dense_9/BiasAdd/ReadVariableOp¢%model_3/dense_9/MatMul/ReadVariableOp
%model_3/dense_9/MatMul/ReadVariableOpReadVariableOp.model_3_dense_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
model_3/dense_9/MatMulMatMulinput_3-model_3/dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&model_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_3_dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
model_3/dense_9/BiasAddBiasAdd model_3/dense_9/MatMul:product:0.model_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
model_3/dense_9/ReluRelu model_3/dense_9/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
model_3/reshape_3/ShapeShape"model_3/dense_9/Relu:activations:0*
T0*
_output_shapes
:o
%model_3/reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'model_3/reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'model_3/reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
model_3/reshape_3/strided_sliceStridedSlice model_3/reshape_3/Shape:output:0.model_3/reshape_3/strided_slice/stack:output:00model_3/reshape_3/strided_slice/stack_1:output:00model_3/reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!model_3/reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@c
!model_3/reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :×
model_3/reshape_3/Reshape/shapePack(model_3/reshape_3/strided_slice:output:0*model_3/reshape_3/Reshape/shape/1:output:0*model_3/reshape_3/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:¨
model_3/reshape_3/ReshapeReshape"model_3/dense_9/Relu:activations:0(model_3/reshape_3/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ô
Smodel_3/attention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOp\model_3_attention_block_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0¯
Dmodel_3/attention_block_2/multi_head_attention_2/query/einsum/EinsumEinsum"model_3/reshape_3/Reshape:output:0[model_3/attention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abdeÜ
Imodel_3/attention_block_2/multi_head_attention_2/query/add/ReadVariableOpReadVariableOpRmodel_3_attention_block_2_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:*
dtype0
:model_3/attention_block_2/multi_head_attention_2/query/addAddV2Mmodel_3/attention_block_2/multi_head_attention_2/query/einsum/Einsum:output:0Qmodel_3/attention_block_2/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ð
Qmodel_3/attention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOpZmodel_3_attention_block_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0«
Bmodel_3/attention_block_2/multi_head_attention_2/key/einsum/EinsumEinsum"model_3/reshape_3/Reshape:output:0Ymodel_3/attention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abdeØ
Gmodel_3/attention_block_2/multi_head_attention_2/key/add/ReadVariableOpReadVariableOpPmodel_3_attention_block_2_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:*
dtype0
8model_3/attention_block_2/multi_head_attention_2/key/addAddV2Kmodel_3/attention_block_2/multi_head_attention_2/key/einsum/Einsum:output:0Omodel_3/attention_block_2/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ô
Smodel_3/attention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOp\model_3_attention_block_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0¯
Dmodel_3/attention_block_2/multi_head_attention_2/value/einsum/EinsumEinsum"model_3/reshape_3/Reshape:output:0[model_3/attention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abdeÜ
Imodel_3/attention_block_2/multi_head_attention_2/value/add/ReadVariableOpReadVariableOpRmodel_3_attention_block_2_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:*
dtype0
:model_3/attention_block_2/multi_head_attention_2/value/addAddV2Mmodel_3/attention_block_2/multi_head_attention_2/value/einsum/Einsum:output:0Qmodel_3/attention_block_2/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
6model_3/attention_block_2/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ö
4model_3/attention_block_2/multi_head_attention_2/MulMul>model_3/attention_block_2/multi_head_attention_2/query/add:z:0?model_3/attention_block_2/multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
>model_3/attention_block_2/multi_head_attention_2/einsum/EinsumEinsum<model_3/attention_block_2/multi_head_attention_2/key/add:z:08model_3/attention_block_2/multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
equationaecd,abcd->acbeÎ
@model_3/attention_block_2/multi_head_attention_2/softmax/SoftmaxSoftmaxGmodel_3/attention_block_2/multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@Ó
Amodel_3/attention_block_2/multi_head_attention_2/dropout/IdentityIdentityJmodel_3/attention_block_2/multi_head_attention_2/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@¸
@model_3/attention_block_2/multi_head_attention_2/einsum_1/EinsumEinsumJmodel_3/attention_block_2/multi_head_attention_2/dropout/Identity:output:0>model_3/attention_block_2/multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationacbe,aecd->abcd
^model_3/attention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpgmodel_3_attention_block_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0è
Omodel_3/attention_block_2/multi_head_attention_2/attention_output/einsum/EinsumEinsumImodel_3/attention_block_2/multi_head_attention_2/einsum_1/Einsum:output:0fmodel_3/attention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabcd,cde->abeî
Tmodel_3/attention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOp]model_3_attention_block_2_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0¼
Emodel_3/attention_block_2/multi_head_attention_2/attention_output/addAddV2Xmodel_3/attention_block_2/multi_head_attention_2/attention_output/einsum/Einsum:output:0\model_3/attention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¹
,model_3/attention_block_2/dropout_4/IdentityIdentityImodel_3/attention_block_2/multi_head_attention_2/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
model_3/attention_block_2/addAddV2"model_3/reshape_3/Reshape:output:05model_3/attention_block_2/dropout_4/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Nmodel_3/attention_block_2/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
<model_3/attention_block_2/layer_normalization_4/moments/meanMean!model_3/attention_block_2/add:z:0Wmodel_3/attention_block_2/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(Ñ
Dmodel_3/attention_block_2/layer_normalization_4/moments/StopGradientStopGradientEmodel_3/attention_block_2/layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Imodel_3/attention_block_2/layer_normalization_4/moments/SquaredDifferenceSquaredDifference!model_3/attention_block_2/add:z:0Mmodel_3/attention_block_2/layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Rmodel_3/attention_block_2/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
@model_3/attention_block_2/layer_normalization_4/moments/varianceMeanMmodel_3/attention_block_2/layer_normalization_4/moments/SquaredDifference:z:0[model_3/attention_block_2/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(
?model_3/attention_block_2/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
=model_3/attention_block_2/layer_normalization_4/batchnorm/addAddV2Imodel_3/attention_block_2/layer_normalization_4/moments/variance:output:0Hmodel_3/attention_block_2/layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
?model_3/attention_block_2/layer_normalization_4/batchnorm/RsqrtRsqrtAmodel_3/attention_block_2/layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Þ
Lmodel_3/attention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpUmodel_3_attention_block_2_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
=model_3/attention_block_2/layer_normalization_4/batchnorm/mulMulCmodel_3/attention_block_2/layer_normalization_4/batchnorm/Rsqrt:y:0Tmodel_3/attention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@â
?model_3/attention_block_2/layer_normalization_4/batchnorm/mul_1Mul!model_3/attention_block_2/add:z:0Amodel_3/attention_block_2/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
?model_3/attention_block_2/layer_normalization_4/batchnorm/mul_2MulEmodel_3/attention_block_2/layer_normalization_4/moments/mean:output:0Amodel_3/attention_block_2/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
Hmodel_3/attention_block_2/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOpQmodel_3_attention_block_2_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
=model_3/attention_block_2/layer_normalization_4/batchnorm/subSubPmodel_3/attention_block_2/layer_normalization_4/batchnorm/ReadVariableOp:value:0Cmodel_3/attention_block_2/layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
?model_3/attention_block_2/layer_normalization_4/batchnorm/add_1AddV2Cmodel_3/attention_block_2/layer_normalization_4/batchnorm/mul_1:z:0Amodel_3/attention_block_2/layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Û
Hmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOpReadVariableOpQmodel_3_attention_block_2_sequential_2_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0
>model_3/attention_block_2/sequential_2/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
>model_3/attention_block_2/sequential_2/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ²
?model_3/attention_block_2/sequential_2/dense_10/Tensordot/ShapeShapeCmodel_3/attention_block_2/layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:
Gmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : û
Bmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/GatherV2GatherV2Hmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/Shape:output:0Gmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/free:output:0Pmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Imodel_3/attention_block_2/sequential_2/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Dmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/GatherV2_1GatherV2Hmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/Shape:output:0Gmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/axes:output:0Rmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
?model_3/attention_block_2/sequential_2/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: þ
>model_3/attention_block_2/sequential_2/dense_10/Tensordot/ProdProdKmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/GatherV2:output:0Hmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Amodel_3/attention_block_2/sequential_2/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
@model_3/attention_block_2/sequential_2/dense_10/Tensordot/Prod_1ProdMmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/GatherV2_1:output:0Jmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Emodel_3/attention_block_2/sequential_2/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ü
@model_3/attention_block_2/sequential_2/dense_10/Tensordot/concatConcatV2Gmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/free:output:0Gmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/axes:output:0Nmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
?model_3/attention_block_2/sequential_2/dense_10/Tensordot/stackPackGmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/Prod:output:0Imodel_3/attention_block_2/sequential_2/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Cmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/transpose	TransposeCmodel_3/attention_block_2/layer_normalization_4/batchnorm/add_1:z:0Imodel_3/attention_block_2/sequential_2/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Amodel_3/attention_block_2/sequential_2/dense_10/Tensordot/ReshapeReshapeGmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/transpose:y:0Hmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
@model_3/attention_block_2/sequential_2/dense_10/Tensordot/MatMulMatMulJmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/Reshape:output:0Pmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Amodel_3/attention_block_2/sequential_2/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
Gmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
Bmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/concat_1ConcatV2Kmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/GatherV2:output:0Jmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/Const_2:output:0Pmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
9model_3/attention_block_2/sequential_2/dense_10/TensordotReshapeJmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/MatMul:product:0Kmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ó
Fmodel_3/attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOpReadVariableOpOmodel_3_attention_block_2_sequential_2_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
7model_3/attention_block_2/sequential_2/dense_10/BiasAddBiasAddBmodel_3/attention_block_2/sequential_2/dense_10/Tensordot:output:0Nmodel_3/attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
4model_3/attention_block_2/sequential_2/dense_10/ReluRelu@model_3/attention_block_2/sequential_2/dense_10/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Û
Hmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOpReadVariableOpQmodel_3_attention_block_2_sequential_2_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0
>model_3/attention_block_2/sequential_2/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
>model_3/attention_block_2/sequential_2/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ±
?model_3/attention_block_2/sequential_2/dense_11/Tensordot/ShapeShapeBmodel_3/attention_block_2/sequential_2/dense_10/Relu:activations:0*
T0*
_output_shapes
:
Gmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : û
Bmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/GatherV2GatherV2Hmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/Shape:output:0Gmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/free:output:0Pmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Imodel_3/attention_block_2/sequential_2/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Dmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/GatherV2_1GatherV2Hmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/Shape:output:0Gmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/axes:output:0Rmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
?model_3/attention_block_2/sequential_2/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: þ
>model_3/attention_block_2/sequential_2/dense_11/Tensordot/ProdProdKmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/GatherV2:output:0Hmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: 
Amodel_3/attention_block_2/sequential_2/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
@model_3/attention_block_2/sequential_2/dense_11/Tensordot/Prod_1ProdMmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/GatherV2_1:output:0Jmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
Emodel_3/attention_block_2/sequential_2/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ü
@model_3/attention_block_2/sequential_2/dense_11/Tensordot/concatConcatV2Gmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/free:output:0Gmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/axes:output:0Nmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
?model_3/attention_block_2/sequential_2/dense_11/Tensordot/stackPackGmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/Prod:output:0Imodel_3/attention_block_2/sequential_2/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
Cmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/transpose	TransposeBmodel_3/attention_block_2/sequential_2/dense_10/Relu:activations:0Imodel_3/attention_block_2/sequential_2/dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Amodel_3/attention_block_2/sequential_2/dense_11/Tensordot/ReshapeReshapeGmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/transpose:y:0Hmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
@model_3/attention_block_2/sequential_2/dense_11/Tensordot/MatMulMatMulJmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/Reshape:output:0Pmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Amodel_3/attention_block_2/sequential_2/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
Gmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ç
Bmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/concat_1ConcatV2Kmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/GatherV2:output:0Jmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/Const_2:output:0Pmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
9model_3/attention_block_2/sequential_2/dense_11/TensordotReshapeJmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/MatMul:product:0Kmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ò
Fmodel_3/attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOpReadVariableOpOmodel_3_attention_block_2_sequential_2_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
7model_3/attention_block_2/sequential_2/dense_11/BiasAddBiasAddBmodel_3/attention_block_2/sequential_2/dense_11/Tensordot:output:0Nmodel_3/attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@°
,model_3/attention_block_2/dropout_5/IdentityIdentity@model_3/attention_block_2/sequential_2/dense_11/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ú
model_3/attention_block_2/add_1AddV2Cmodel_3/attention_block_2/layer_normalization_4/batchnorm/add_1:z:05model_3/attention_block_2/dropout_5/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Nmodel_3/attention_block_2/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
<model_3/attention_block_2/layer_normalization_5/moments/meanMean#model_3/attention_block_2/add_1:z:0Wmodel_3/attention_block_2/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(Ñ
Dmodel_3/attention_block_2/layer_normalization_5/moments/StopGradientStopGradientEmodel_3/attention_block_2/layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Imodel_3/attention_block_2/layer_normalization_5/moments/SquaredDifferenceSquaredDifference#model_3/attention_block_2/add_1:z:0Mmodel_3/attention_block_2/layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Rmodel_3/attention_block_2/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:»
@model_3/attention_block_2/layer_normalization_5/moments/varianceMeanMmodel_3/attention_block_2/layer_normalization_5/moments/SquaredDifference:z:0[model_3/attention_block_2/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(
?model_3/attention_block_2/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
=model_3/attention_block_2/layer_normalization_5/batchnorm/addAddV2Imodel_3/attention_block_2/layer_normalization_5/moments/variance:output:0Hmodel_3/attention_block_2/layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
?model_3/attention_block_2/layer_normalization_5/batchnorm/RsqrtRsqrtAmodel_3/attention_block_2/layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Þ
Lmodel_3/attention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpUmodel_3_attention_block_2_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
=model_3/attention_block_2/layer_normalization_5/batchnorm/mulMulCmodel_3/attention_block_2/layer_normalization_5/batchnorm/Rsqrt:y:0Tmodel_3/attention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ä
?model_3/attention_block_2/layer_normalization_5/batchnorm/mul_1Mul#model_3/attention_block_2/add_1:z:0Amodel_3/attention_block_2/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
?model_3/attention_block_2/layer_normalization_5/batchnorm/mul_2MulEmodel_3/attention_block_2/layer_normalization_5/moments/mean:output:0Amodel_3/attention_block_2/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
Hmodel_3/attention_block_2/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOpQmodel_3_attention_block_2_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
=model_3/attention_block_2/layer_normalization_5/batchnorm/subSubPmodel_3/attention_block_2/layer_normalization_5/batchnorm/ReadVariableOp:value:0Cmodel_3/attention_block_2/layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
?model_3/attention_block_2/layer_normalization_5/batchnorm/add_1AddV2Cmodel_3/attention_block_2/layer_normalization_5/batchnorm/mul_1:z:0Amodel_3/attention_block_2/layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@²
6model_3/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp?model_3_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0r
-model_3/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ñ
+model_3/batch_normalization_3/batchnorm/addAddV2>model_3/batch_normalization_3/batchnorm/ReadVariableOp:value:06model_3/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:
-model_3/batch_normalization_3/batchnorm/RsqrtRsqrt/model_3/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:º
:model_3/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_3_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Î
+model_3/batch_normalization_3/batchnorm/mulMul1model_3/batch_normalization_3/batchnorm/Rsqrt:y:0Bmodel_3/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:à
-model_3/batch_normalization_3/batchnorm/mul_1MulCmodel_3/attention_block_2/layer_normalization_5/batchnorm/add_1:z:0/model_3/batch_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¶
8model_3/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_3_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ì
-model_3/batch_normalization_3/batchnorm/mul_2Mul@model_3/batch_normalization_3/batchnorm/ReadVariableOp_1:value:0/model_3/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:¶
8model_3/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_3_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ì
+model_3/batch_normalization_3/batchnorm/subSub@model_3/batch_normalization_3/batchnorm/ReadVariableOp_2:value:01model_3/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Ð
-model_3/batch_normalization_3/batchnorm/add_1AddV21model_3/batch_normalization_3/batchnorm/mul_1:z:0/model_3/batch_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
model_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¬
model_3/flatten_3/ReshapeReshape1model_3/batch_normalization_3/batchnorm/add_1:z:0 model_3/flatten_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&model_3/dense_12/MatMul/ReadVariableOpReadVariableOp/model_3_dense_12_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0§
model_3/dense_12/MatMulMatMul"model_3/flatten_3/Reshape:output:0.model_3/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'model_3/dense_12/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
model_3/dense_12/BiasAddBiasAdd!model_3/dense_12/MatMul:product:0/model_3/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
IdentityIdentity!model_3/dense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÌ
NoOpNoOpI^model_3/attention_block_2/layer_normalization_4/batchnorm/ReadVariableOpM^model_3/attention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpI^model_3/attention_block_2/layer_normalization_5/batchnorm/ReadVariableOpM^model_3/attention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpU^model_3/attention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp_^model_3/attention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpH^model_3/attention_block_2/multi_head_attention_2/key/add/ReadVariableOpR^model_3/attention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpJ^model_3/attention_block_2/multi_head_attention_2/query/add/ReadVariableOpT^model_3/attention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpJ^model_3/attention_block_2/multi_head_attention_2/value/add/ReadVariableOpT^model_3/attention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpG^model_3/attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOpI^model_3/attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOpG^model_3/attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOpI^model_3/attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp7^model_3/batch_normalization_3/batchnorm/ReadVariableOp9^model_3/batch_normalization_3/batchnorm/ReadVariableOp_19^model_3/batch_normalization_3/batchnorm/ReadVariableOp_2;^model_3/batch_normalization_3/batchnorm/mul/ReadVariableOp(^model_3/dense_12/BiasAdd/ReadVariableOp'^model_3/dense_12/MatMul/ReadVariableOp'^model_3/dense_9/BiasAdd/ReadVariableOp&^model_3/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2
Hmodel_3/attention_block_2/layer_normalization_4/batchnorm/ReadVariableOpHmodel_3/attention_block_2/layer_normalization_4/batchnorm/ReadVariableOp2
Lmodel_3/attention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpLmodel_3/attention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp2
Hmodel_3/attention_block_2/layer_normalization_5/batchnorm/ReadVariableOpHmodel_3/attention_block_2/layer_normalization_5/batchnorm/ReadVariableOp2
Lmodel_3/attention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpLmodel_3/attention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp2¬
Tmodel_3/attention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpTmodel_3/attention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp2À
^model_3/attention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp^model_3/attention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2
Gmodel_3/attention_block_2/multi_head_attention_2/key/add/ReadVariableOpGmodel_3/attention_block_2/multi_head_attention_2/key/add/ReadVariableOp2¦
Qmodel_3/attention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpQmodel_3/attention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2
Imodel_3/attention_block_2/multi_head_attention_2/query/add/ReadVariableOpImodel_3/attention_block_2/multi_head_attention_2/query/add/ReadVariableOp2ª
Smodel_3/attention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpSmodel_3/attention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2
Imodel_3/attention_block_2/multi_head_attention_2/value/add/ReadVariableOpImodel_3/attention_block_2/multi_head_attention_2/value/add/ReadVariableOp2ª
Smodel_3/attention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpSmodel_3/attention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2
Fmodel_3/attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOpFmodel_3/attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOp2
Hmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOpHmodel_3/attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp2
Fmodel_3/attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOpFmodel_3/attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOp2
Hmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOpHmodel_3/attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp2p
6model_3/batch_normalization_3/batchnorm/ReadVariableOp6model_3/batch_normalization_3/batchnorm/ReadVariableOp2t
8model_3/batch_normalization_3/batchnorm/ReadVariableOp_18model_3/batch_normalization_3/batchnorm/ReadVariableOp_12t
8model_3/batch_normalization_3/batchnorm/ReadVariableOp_28model_3/batch_normalization_3/batchnorm/ReadVariableOp_22x
:model_3/batch_normalization_3/batchnorm/mul/ReadVariableOp:model_3/batch_normalization_3/batchnorm/mul/ReadVariableOp2R
'model_3/dense_12/BiasAdd/ReadVariableOp'model_3/dense_12/BiasAdd/ReadVariableOp2P
&model_3/dense_12/MatMul/ReadVariableOp&model_3/dense_12/MatMul/ReadVariableOp2P
&model_3/dense_9/BiasAdd/ReadVariableOp&model_3/dense_9/BiasAdd/ReadVariableOp2N
%model_3/dense_9/MatMul/ReadVariableOp%model_3/dense_9/MatMul/ReadVariableOp:Q M
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
·e
±
"__inference__traced_restore_143319
file_prefix3
assignvariableop_dense_9_kernel:
.
assignvariableop_1_dense_9_bias:	<
.assignvariableop_2_batch_normalization_3_gamma:;
-assignvariableop_3_batch_normalization_3_beta:B
4assignvariableop_4_batch_normalization_3_moving_mean:F
8assignvariableop_5_batch_normalization_3_moving_variance:5
"assignvariableop_6_dense_12_kernel:	.
 assignvariableop_7_dense_12_bias:^
Hassignvariableop_8_attention_block_2_multi_head_attention_2_query_kernel:X
Fassignvariableop_9_attention_block_2_multi_head_attention_2_query_bias:]
Gassignvariableop_10_attention_block_2_multi_head_attention_2_key_kernel:W
Eassignvariableop_11_attention_block_2_multi_head_attention_2_key_bias:_
Iassignvariableop_12_attention_block_2_multi_head_attention_2_value_kernel:Y
Gassignvariableop_13_attention_block_2_multi_head_attention_2_value_bias:j
Tassignvariableop_14_attention_block_2_multi_head_attention_2_attention_output_kernel:`
Rassignvariableop_15_attention_block_2_multi_head_attention_2_attention_output_bias:6
#assignvariableop_16_dense_10_kernel:	0
!assignvariableop_17_dense_10_bias:	6
#assignvariableop_18_dense_11_kernel:	/
!assignvariableop_19_dense_11_bias:O
Aassignvariableop_20_attention_block_2_layer_normalization_4_gamma:N
@assignvariableop_21_attention_block_2_layer_normalization_4_beta:O
Aassignvariableop_22_attention_block_2_layer_normalization_5_gamma:N
@assignvariableop_23_attention_block_2_layer_normalization_5_beta:
identity_25¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ü	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*	
valueøBõB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¢
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_9_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_9_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_3_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_3_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_3_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_3_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_12_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_12_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_8AssignVariableOpHassignvariableop_8_attention_block_2_multi_head_attention_2_query_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_9AssignVariableOpFassignvariableop_9_attention_block_2_multi_head_attention_2_query_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_10AssignVariableOpGassignvariableop_10_attention_block_2_multi_head_attention_2_key_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_11AssignVariableOpEassignvariableop_11_attention_block_2_multi_head_attention_2_key_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:º
AssignVariableOp_12AssignVariableOpIassignvariableop_12_attention_block_2_multi_head_attention_2_value_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_13AssignVariableOpGassignvariableop_13_attention_block_2_multi_head_attention_2_value_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Å
AssignVariableOp_14AssignVariableOpTassignvariableop_14_attention_block_2_multi_head_attention_2_attention_output_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_15AssignVariableOpRassignvariableop_15_attention_block_2_multi_head_attention_2_attention_output_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_10_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_10_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_11_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_11_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_20AssignVariableOpAassignvariableop_20_attention_block_2_layer_normalization_4_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_21AssignVariableOp@assignvariableop_21_attention_block_2_layer_normalization_4_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_22AssignVariableOpAassignvariableop_22_attention_block_2_layer_normalization_5_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_23AssignVariableOp@assignvariableop_23_attention_block_2_layer_normalization_5_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ß
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: Ì
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ë	
ö
D__inference_dense_12_layer_call_and_return_conditional_losses_142923

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_142904

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
º
´
H__inference_sequential_2_layer_call_and_return_conditional_losses_140913

inputs"
dense_10_140902:	
dense_10_140904:	"
dense_11_140907:	
dense_11_140909:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCallø
 dense_10/StatefulPartitionedCallStatefulPartitionedCallinputsdense_10_140902dense_10_140904*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_140810
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_140907dense_11_140909*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_140846|
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ý;
Ñ
__inference__traced_save_143237
file_prefix-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableopT
Psavev2_attention_block_2_multi_head_attention_2_query_kernel_read_readvariableopR
Nsavev2_attention_block_2_multi_head_attention_2_query_bias_read_readvariableopR
Nsavev2_attention_block_2_multi_head_attention_2_key_kernel_read_readvariableopP
Lsavev2_attention_block_2_multi_head_attention_2_key_bias_read_readvariableopT
Psavev2_attention_block_2_multi_head_attention_2_value_kernel_read_readvariableopR
Nsavev2_attention_block_2_multi_head_attention_2_value_bias_read_readvariableop_
[savev2_attention_block_2_multi_head_attention_2_attention_output_kernel_read_readvariableop]
Ysavev2_attention_block_2_multi_head_attention_2_attention_output_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableopL
Hsavev2_attention_block_2_layer_normalization_4_gamma_read_readvariableopK
Gsavev2_attention_block_2_layer_normalization_4_beta_read_readvariableopL
Hsavev2_attention_block_2_layer_normalization_5_gamma_read_readvariableopK
Gsavev2_attention_block_2_layer_normalization_5_beta_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ù	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*	
valueøBõB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B Í
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableopPsavev2_attention_block_2_multi_head_attention_2_query_kernel_read_readvariableopNsavev2_attention_block_2_multi_head_attention_2_query_bias_read_readvariableopNsavev2_attention_block_2_multi_head_attention_2_key_kernel_read_readvariableopLsavev2_attention_block_2_multi_head_attention_2_key_bias_read_readvariableopPsavev2_attention_block_2_multi_head_attention_2_value_kernel_read_readvariableopNsavev2_attention_block_2_multi_head_attention_2_value_bias_read_readvariableop[savev2_attention_block_2_multi_head_attention_2_attention_output_kernel_read_readvariableopYsavev2_attention_block_2_multi_head_attention_2_attention_output_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableopHsavev2_attention_block_2_layer_normalization_4_gamma_read_readvariableopGsavev2_attention_block_2_layer_normalization_4_beta_read_readvariableopHsavev2_attention_block_2_layer_normalization_5_gamma_read_readvariableopGsavev2_attention_block_2_layer_normalization_5_beta_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ì
_input_shapesÚ
×: :
::::::	::::::::::	::	:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
:!

_output_shapes	
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	: 

_output_shapes
::(	$
"
_output_shapes
::$
 

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
Ò
¼
H__inference_sequential_2_layer_call_and_return_conditional_losses_140965
dense_10_input"
dense_10_140954:	
dense_10_140956:	"
dense_11_140959:	
dense_11_140961:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall
 dense_10/StatefulPartitionedCallStatefulPartitionedCalldense_10_inputdense_10_140954dense_10_140956*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_140810
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_140959dense_11_140961*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_140846|
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(
_user_specified_namedense_10_input
¿
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_141262

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Å'
ð	
C__inference_model_3_layer_call_and_return_conditional_losses_141281

inputs"
dense_9_141066:

dense_9_141068:	.
attention_block_2_141214:*
attention_block_2_141216:.
attention_block_2_141218:*
attention_block_2_141220:.
attention_block_2_141222:*
attention_block_2_141224:.
attention_block_2_141226:&
attention_block_2_141228:&
attention_block_2_141230:&
attention_block_2_141232:+
attention_block_2_141234:	'
attention_block_2_141236:	+
attention_block_2_141238:	&
attention_block_2_141240:&
attention_block_2_141242:&
attention_block_2_141244:*
batch_normalization_3_141247:*
batch_normalization_3_141249:*
batch_normalization_3_141251:*
batch_normalization_3_141253:"
dense_12_141275:	
dense_12_141277:
identity¢)attention_block_2/StatefulPartitionedCall¢-batch_normalization_3/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallð
dense_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_9_141066dense_9_141068*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_141065ã
reshape_3/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_3_layer_call_and_return_conditional_losses_141084¿
)attention_block_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0attention_block_2_141214attention_block_2_141216attention_block_2_141218attention_block_2_141220attention_block_2_141222attention_block_2_141224attention_block_2_141226attention_block_2_141228attention_block_2_141230attention_block_2_141232attention_block_2_141234attention_block_2_141236attention_block_2_141238attention_block_2_141240attention_block_2_141242attention_block_2_141244*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_attention_block_2_layer_call_and_return_conditional_losses_141213
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall2attention_block_2/StatefulPartitionedCall:output:0batch_normalization_3_141247batch_normalization_3_141249batch_normalization_3_141251batch_normalization_3_141253*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_140989î
flatten_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_141262
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_12_141275dense_12_141277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_141274x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿç
NoOpNoOp*^attention_block_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2V
)attention_block_2/StatefulPartitionedCall)attention_block_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦

÷
C__inference_dense_9_layer_call_and_return_conditional_losses_142454

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
Ñ
6__inference_batch_normalization_3_layer_call_fn_142839

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_141036|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì
Û
-__inference_sequential_2_layer_call_fn_140937
dense_10_input
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_10_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_140913s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(
_user_specified_namedense_10_input
Ù

a
E__inference_reshape_3_layer_call_and_return_conditional_losses_142472

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù

)__inference_dense_10_layer_call_fn_143072

inputs
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_140810t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


(__inference_model_3_layer_call_fn_142020

inputs
unknown:

	unknown_0:	
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:	

unknown_22:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_141281o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


(__inference_model_3_layer_call_fn_142073

inputs
unknown:

	unknown_0:	
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:	

unknown_22:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_141692o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á?
â
H__inference_sequential_2_layer_call_and_return_conditional_losses_143006

inputs=
*dense_10_tensordot_readvariableop_resource:	7
(dense_10_biasadd_readvariableop_resource:	=
*dense_11_tensordot_readvariableop_resource:	6
(dense_11_biasadd_readvariableop_resource:
identity¢dense_10/BiasAdd/ReadVariableOp¢!dense_10/Tensordot/ReadVariableOp¢dense_11/BiasAdd/ReadVariableOp¢!dense_11/Tensordot/ReadVariableOp
!dense_10/Tensordot/ReadVariableOpReadVariableOp*dense_10_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0a
dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_10/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_10/Tensordot/GatherV2GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/free:output:0)dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_10/Tensordot/GatherV2_1GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/axes:output:0+dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_10/Tensordot/ProdProd$dense_10/Tensordot/GatherV2:output:0!dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_10/Tensordot/Prod_1Prod&dense_10/Tensordot/GatherV2_1:output:0#dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_10/Tensordot/concatConcatV2 dense_10/Tensordot/free:output:0 dense_10/Tensordot/axes:output:0'dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_10/Tensordot/stackPack dense_10/Tensordot/Prod:output:0"dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_10/Tensordot/transpose	Transposeinputs"dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
dense_10/Tensordot/ReshapeReshape dense_10/Tensordot/transpose:y:0!dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
dense_10/Tensordot/MatMulMatMul#dense_10/Tensordot/Reshape:output:0)dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_10/Tensordot/concat_1ConcatV2$dense_10/Tensordot/GatherV2:output:0#dense_10/Tensordot/Const_2:output:0)dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_10/TensordotReshape#dense_10/Tensordot/MatMul:product:0$dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_10/BiasAddBiasAdddense_10/Tensordot:output:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!dense_11/Tensordot/ReadVariableOpReadVariableOp*dense_11_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0a
dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_11/Tensordot/ShapeShapedense_10/Relu:activations:0*
T0*
_output_shapes
:b
 dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_11/Tensordot/GatherV2GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/free:output:0)dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_11/Tensordot/GatherV2_1GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/axes:output:0+dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_11/Tensordot/ProdProd$dense_11/Tensordot/GatherV2:output:0!dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_11/Tensordot/Prod_1Prod&dense_11/Tensordot/GatherV2_1:output:0#dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_11/Tensordot/concatConcatV2 dense_11/Tensordot/free:output:0 dense_11/Tensordot/axes:output:0'dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_11/Tensordot/stackPack dense_11/Tensordot/Prod:output:0"dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¡
dense_11/Tensordot/transpose	Transposedense_10/Relu:activations:0"dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
dense_11/Tensordot/ReshapeReshape dense_11/Tensordot/transpose:y:0!dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_11/Tensordot/MatMulMatMul#dense_11/Tensordot/Reshape:output:0)dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_11/Tensordot/concat_1ConcatV2$dense_11/Tensordot/GatherV2:output:0#dense_11/Tensordot/Const_2:output:0)dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_11/TensordotReshape#dense_11/Tensordot/MatMul:product:0$dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_11/BiasAddBiasAdddense_11/Tensordot:output:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
IdentityIdentitydense_11/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ò
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp"^dense_10/Tensordot/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp"^dense_11/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2F
!dense_10/Tensordot/ReadVariableOp!dense_10/Tensordot/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2F
!dense_11/Tensordot/ReadVariableOp!dense_11/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ì
Û
-__inference_sequential_2_layer_call_fn_140864
dense_10_input
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_10_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_140853s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(
_user_specified_namedense_10_input

°
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_142859

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
Ó
-__inference_sequential_2_layer_call_fn_142949

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_140913s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ß
Ñ
6__inference_batch_normalization_3_layer_call_fn_142826

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_140989|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

°
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_140989

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
Á
C__inference_model_3_layer_call_and_return_conditional_losses_142240

inputs:
&dense_9_matmul_readvariableop_resource:
6
'dense_9_biasadd_readvariableop_resource:	j
Tattention_block_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource:\
Jattention_block_2_multi_head_attention_2_query_add_readvariableop_resource:h
Rattention_block_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource:Z
Hattention_block_2_multi_head_attention_2_key_add_readvariableop_resource:j
Tattention_block_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource:\
Jattention_block_2_multi_head_attention_2_value_add_readvariableop_resource:u
_attention_block_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:c
Uattention_block_2_multi_head_attention_2_attention_output_add_readvariableop_resource:[
Mattention_block_2_layer_normalization_4_batchnorm_mul_readvariableop_resource:W
Iattention_block_2_layer_normalization_4_batchnorm_readvariableop_resource:\
Iattention_block_2_sequential_2_dense_10_tensordot_readvariableop_resource:	V
Gattention_block_2_sequential_2_dense_10_biasadd_readvariableop_resource:	\
Iattention_block_2_sequential_2_dense_11_tensordot_readvariableop_resource:	U
Gattention_block_2_sequential_2_dense_11_biasadd_readvariableop_resource:[
Mattention_block_2_layer_normalization_5_batchnorm_mul_readvariableop_resource:W
Iattention_block_2_layer_normalization_5_batchnorm_readvariableop_resource:E
7batch_normalization_3_batchnorm_readvariableop_resource:I
;batch_normalization_3_batchnorm_mul_readvariableop_resource:G
9batch_normalization_3_batchnorm_readvariableop_1_resource:G
9batch_normalization_3_batchnorm_readvariableop_2_resource::
'dense_12_matmul_readvariableop_resource:	6
(dense_12_biasadd_readvariableop_resource:
identity¢@attention_block_2/layer_normalization_4/batchnorm/ReadVariableOp¢Dattention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp¢@attention_block_2/layer_normalization_5/batchnorm/ReadVariableOp¢Dattention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp¢Lattention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp¢Vattention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢?attention_block_2/multi_head_attention_2/key/add/ReadVariableOp¢Iattention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢Aattention_block_2/multi_head_attention_2/query/add/ReadVariableOp¢Kattention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢Aattention_block_2/multi_head_attention_2/value/add/ReadVariableOp¢Kattention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢>attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOp¢@attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp¢>attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOp¢@attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp¢.batch_normalization_3/batchnorm/ReadVariableOp¢0batch_normalization_3/batchnorm/ReadVariableOp_1¢0batch_normalization_3/batchnorm/ReadVariableOp_2¢2batch_normalization_3/batchnorm/mul/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_9/BiasAdd/ReadVariableOp¢dense_9/MatMul/ReadVariableOp
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0z
dense_9/MatMulMatMulinputs%dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
reshape_3/ShapeShapedense_9/Relu:activations:0*
T0*
_output_shapes
:g
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@[
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :·
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_3/ReshapeReshapedense_9/Relu:activations:0 reshape_3/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ä
Kattention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpTattention_block_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0
<attention_block_2/multi_head_attention_2/query/einsum/EinsumEinsumreshape_3/Reshape:output:0Sattention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abdeÌ
Aattention_block_2/multi_head_attention_2/query/add/ReadVariableOpReadVariableOpJattention_block_2_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:*
dtype0
2attention_block_2/multi_head_attention_2/query/addAddV2Eattention_block_2/multi_head_attention_2/query/einsum/Einsum:output:0Iattention_block_2/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@à
Iattention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOpRattention_block_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0
:attention_block_2/multi_head_attention_2/key/einsum/EinsumEinsumreshape_3/Reshape:output:0Qattention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abdeÈ
?attention_block_2/multi_head_attention_2/key/add/ReadVariableOpReadVariableOpHattention_block_2_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:*
dtype0
0attention_block_2/multi_head_attention_2/key/addAddV2Cattention_block_2/multi_head_attention_2/key/einsum/Einsum:output:0Gattention_block_2/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ä
Kattention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpTattention_block_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0
<attention_block_2/multi_head_attention_2/value/einsum/EinsumEinsumreshape_3/Reshape:output:0Sattention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abdeÌ
Aattention_block_2/multi_head_attention_2/value/add/ReadVariableOpReadVariableOpJattention_block_2_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:*
dtype0
2attention_block_2/multi_head_attention_2/value/addAddV2Eattention_block_2/multi_head_attention_2/value/einsum/Einsum:output:0Iattention_block_2/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
.attention_block_2/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Þ
,attention_block_2/multi_head_attention_2/MulMul6attention_block_2/multi_head_attention_2/query/add:z:07attention_block_2/multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
6attention_block_2/multi_head_attention_2/einsum/EinsumEinsum4attention_block_2/multi_head_attention_2/key/add:z:00attention_block_2/multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
equationaecd,abcd->acbe¾
8attention_block_2/multi_head_attention_2/softmax/SoftmaxSoftmax?attention_block_2/multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@Ã
9attention_block_2/multi_head_attention_2/dropout/IdentityIdentityBattention_block_2/multi_head_attention_2/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 
8attention_block_2/multi_head_attention_2/einsum_1/EinsumEinsumBattention_block_2/multi_head_attention_2/dropout/Identity:output:06attention_block_2/multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationacbe,aecd->abcdú
Vattention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_attention_block_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Ð
Gattention_block_2/multi_head_attention_2/attention_output/einsum/EinsumEinsumAattention_block_2/multi_head_attention_2/einsum_1/Einsum:output:0^attention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabcd,cde->abeÞ
Lattention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpUattention_block_2_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0¤
=attention_block_2/multi_head_attention_2/attention_output/addAddV2Pattention_block_2/multi_head_attention_2/attention_output/einsum/Einsum:output:0Tattention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@©
$attention_block_2/dropout_4/IdentityIdentityAattention_block_2/multi_head_attention_2/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
attention_block_2/addAddV2reshape_3/Reshape:output:0-attention_block_2/dropout_4/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Fattention_block_2/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ï
4attention_block_2/layer_normalization_4/moments/meanMeanattention_block_2/add:z:0Oattention_block_2/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(Á
<attention_block_2/layer_normalization_4/moments/StopGradientStopGradient=attention_block_2/layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
Aattention_block_2/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceattention_block_2/add:z:0Eattention_block_2/layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Jattention_block_2/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8attention_block_2/layer_normalization_4/moments/varianceMeanEattention_block_2/layer_normalization_4/moments/SquaredDifference:z:0Sattention_block_2/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(|
7attention_block_2/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5attention_block_2/layer_normalization_4/batchnorm/addAddV2Aattention_block_2/layer_normalization_4/moments/variance:output:0@attention_block_2/layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@±
7attention_block_2/layer_normalization_4/batchnorm/RsqrtRsqrt9attention_block_2/layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Î
Dattention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpMattention_block_2_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ý
5attention_block_2/layer_normalization_4/batchnorm/mulMul;attention_block_2/layer_normalization_4/batchnorm/Rsqrt:y:0Lattention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ê
7attention_block_2/layer_normalization_4/batchnorm/mul_1Mulattention_block_2/add:z:09attention_block_2/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
7attention_block_2/layer_normalization_4/batchnorm/mul_2Mul=attention_block_2/layer_normalization_4/moments/mean:output:09attention_block_2/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
@attention_block_2/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOpIattention_block_2_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ù
5attention_block_2/layer_normalization_4/batchnorm/subSubHattention_block_2/layer_normalization_4/batchnorm/ReadVariableOp:value:0;attention_block_2/layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
7attention_block_2/layer_normalization_4/batchnorm/add_1AddV2;attention_block_2/layer_normalization_4/batchnorm/mul_1:z:09attention_block_2/layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ë
@attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOpReadVariableOpIattention_block_2_sequential_2_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0
6attention_block_2/sequential_2/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
6attention_block_2/sequential_2/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¢
7attention_block_2/sequential_2/dense_10/Tensordot/ShapeShape;attention_block_2/layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:
?attention_block_2/sequential_2/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
:attention_block_2/sequential_2/dense_10/Tensordot/GatherV2GatherV2@attention_block_2/sequential_2/dense_10/Tensordot/Shape:output:0?attention_block_2/sequential_2/dense_10/Tensordot/free:output:0Hattention_block_2/sequential_2/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Aattention_block_2/sequential_2/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
<attention_block_2/sequential_2/dense_10/Tensordot/GatherV2_1GatherV2@attention_block_2/sequential_2/dense_10/Tensordot/Shape:output:0?attention_block_2/sequential_2/dense_10/Tensordot/axes:output:0Jattention_block_2/sequential_2/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
7attention_block_2/sequential_2/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: æ
6attention_block_2/sequential_2/dense_10/Tensordot/ProdProdCattention_block_2/sequential_2/dense_10/Tensordot/GatherV2:output:0@attention_block_2/sequential_2/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 
9attention_block_2/sequential_2/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ì
8attention_block_2/sequential_2/dense_10/Tensordot/Prod_1ProdEattention_block_2/sequential_2/dense_10/Tensordot/GatherV2_1:output:0Battention_block_2/sequential_2/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=attention_block_2/sequential_2/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
8attention_block_2/sequential_2/dense_10/Tensordot/concatConcatV2?attention_block_2/sequential_2/dense_10/Tensordot/free:output:0?attention_block_2/sequential_2/dense_10/Tensordot/axes:output:0Fattention_block_2/sequential_2/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ñ
7attention_block_2/sequential_2/dense_10/Tensordot/stackPack?attention_block_2/sequential_2/dense_10/Tensordot/Prod:output:0Aattention_block_2/sequential_2/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:þ
;attention_block_2/sequential_2/dense_10/Tensordot/transpose	Transpose;attention_block_2/layer_normalization_4/batchnorm/add_1:z:0Aattention_block_2/sequential_2/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
9attention_block_2/sequential_2/dense_10/Tensordot/ReshapeReshape?attention_block_2/sequential_2/dense_10/Tensordot/transpose:y:0@attention_block_2/sequential_2/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
8attention_block_2/sequential_2/dense_10/Tensordot/MatMulMatMulBattention_block_2/sequential_2/dense_10/Tensordot/Reshape:output:0Hattention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9attention_block_2/sequential_2/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
?attention_block_2/sequential_2/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
:attention_block_2/sequential_2/dense_10/Tensordot/concat_1ConcatV2Cattention_block_2/sequential_2/dense_10/Tensordot/GatherV2:output:0Battention_block_2/sequential_2/dense_10/Tensordot/Const_2:output:0Hattention_block_2/sequential_2/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ü
1attention_block_2/sequential_2/dense_10/TensordotReshapeBattention_block_2/sequential_2/dense_10/Tensordot/MatMul:product:0Cattention_block_2/sequential_2/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ã
>attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOpReadVariableOpGattention_block_2_sequential_2_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0õ
/attention_block_2/sequential_2/dense_10/BiasAddBiasAdd:attention_block_2/sequential_2/dense_10/Tensordot:output:0Fattention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
,attention_block_2/sequential_2/dense_10/ReluRelu8attention_block_2/sequential_2/dense_10/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ë
@attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOpReadVariableOpIattention_block_2_sequential_2_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0
6attention_block_2/sequential_2/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
6attention_block_2/sequential_2/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¡
7attention_block_2/sequential_2/dense_11/Tensordot/ShapeShape:attention_block_2/sequential_2/dense_10/Relu:activations:0*
T0*
_output_shapes
:
?attention_block_2/sequential_2/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
:attention_block_2/sequential_2/dense_11/Tensordot/GatherV2GatherV2@attention_block_2/sequential_2/dense_11/Tensordot/Shape:output:0?attention_block_2/sequential_2/dense_11/Tensordot/free:output:0Hattention_block_2/sequential_2/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Aattention_block_2/sequential_2/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
<attention_block_2/sequential_2/dense_11/Tensordot/GatherV2_1GatherV2@attention_block_2/sequential_2/dense_11/Tensordot/Shape:output:0?attention_block_2/sequential_2/dense_11/Tensordot/axes:output:0Jattention_block_2/sequential_2/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
7attention_block_2/sequential_2/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: æ
6attention_block_2/sequential_2/dense_11/Tensordot/ProdProdCattention_block_2/sequential_2/dense_11/Tensordot/GatherV2:output:0@attention_block_2/sequential_2/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: 
9attention_block_2/sequential_2/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ì
8attention_block_2/sequential_2/dense_11/Tensordot/Prod_1ProdEattention_block_2/sequential_2/dense_11/Tensordot/GatherV2_1:output:0Battention_block_2/sequential_2/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=attention_block_2/sequential_2/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
8attention_block_2/sequential_2/dense_11/Tensordot/concatConcatV2?attention_block_2/sequential_2/dense_11/Tensordot/free:output:0?attention_block_2/sequential_2/dense_11/Tensordot/axes:output:0Fattention_block_2/sequential_2/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ñ
7attention_block_2/sequential_2/dense_11/Tensordot/stackPack?attention_block_2/sequential_2/dense_11/Tensordot/Prod:output:0Aattention_block_2/sequential_2/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:þ
;attention_block_2/sequential_2/dense_11/Tensordot/transpose	Transpose:attention_block_2/sequential_2/dense_10/Relu:activations:0Aattention_block_2/sequential_2/dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
9attention_block_2/sequential_2/dense_11/Tensordot/ReshapeReshape?attention_block_2/sequential_2/dense_11/Tensordot/transpose:y:0@attention_block_2/sequential_2/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
8attention_block_2/sequential_2/dense_11/Tensordot/MatMulMatMulBattention_block_2/sequential_2/dense_11/Tensordot/Reshape:output:0Hattention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9attention_block_2/sequential_2/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
?attention_block_2/sequential_2/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
:attention_block_2/sequential_2/dense_11/Tensordot/concat_1ConcatV2Cattention_block_2/sequential_2/dense_11/Tensordot/GatherV2:output:0Battention_block_2/sequential_2/dense_11/Tensordot/Const_2:output:0Hattention_block_2/sequential_2/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:û
1attention_block_2/sequential_2/dense_11/TensordotReshapeBattention_block_2/sequential_2/dense_11/Tensordot/MatMul:product:0Cattention_block_2/sequential_2/dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
>attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOpReadVariableOpGattention_block_2_sequential_2_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ô
/attention_block_2/sequential_2/dense_11/BiasAddBiasAdd:attention_block_2/sequential_2/dense_11/Tensordot:output:0Fattention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
$attention_block_2/dropout_5/IdentityIdentity8attention_block_2/sequential_2/dense_11/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
attention_block_2/add_1AddV2;attention_block_2/layer_normalization_4/batchnorm/add_1:z:0-attention_block_2/dropout_5/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Fattention_block_2/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
4attention_block_2/layer_normalization_5/moments/meanMeanattention_block_2/add_1:z:0Oattention_block_2/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(Á
<attention_block_2/layer_normalization_5/moments/StopGradientStopGradient=attention_block_2/layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ð
Aattention_block_2/layer_normalization_5/moments/SquaredDifferenceSquaredDifferenceattention_block_2/add_1:z:0Eattention_block_2/layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Jattention_block_2/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8attention_block_2/layer_normalization_5/moments/varianceMeanEattention_block_2/layer_normalization_5/moments/SquaredDifference:z:0Sattention_block_2/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(|
7attention_block_2/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5attention_block_2/layer_normalization_5/batchnorm/addAddV2Aattention_block_2/layer_normalization_5/moments/variance:output:0@attention_block_2/layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@±
7attention_block_2/layer_normalization_5/batchnorm/RsqrtRsqrt9attention_block_2/layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Î
Dattention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpMattention_block_2_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ý
5attention_block_2/layer_normalization_5/batchnorm/mulMul;attention_block_2/layer_normalization_5/batchnorm/Rsqrt:y:0Lattention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
7attention_block_2/layer_normalization_5/batchnorm/mul_1Mulattention_block_2/add_1:z:09attention_block_2/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
7attention_block_2/layer_normalization_5/batchnorm/mul_2Mul=attention_block_2/layer_normalization_5/moments/mean:output:09attention_block_2/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
@attention_block_2/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOpIattention_block_2_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ù
5attention_block_2/layer_normalization_5/batchnorm/subSubHattention_block_2/layer_normalization_5/batchnorm/ReadVariableOp:value:0;attention_block_2/layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
7attention_block_2/layer_normalization_5/batchnorm/add_1AddV2;attention_block_2/layer_normalization_5/batchnorm/mul_1:z:09attention_block_2/layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¹
#batch_normalization_3/batchnorm/addAddV26batch_normalization_3/batchnorm/ReadVariableOp:value:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:ª
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¶
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:È
%batch_normalization_3/batchnorm/mul_1Mul;attention_block_2/layer_normalization_5/batchnorm/add_1:z:0'batch_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
0batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0´
%batch_normalization_3/batchnorm/mul_2Mul8batch_normalization_3/batchnorm/ReadVariableOp_1:value:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:¦
0batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0´
#batch_normalization_3/batchnorm/subSub8batch_normalization_3/batchnorm/ReadVariableOp_2:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:¸
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_3/ReshapeReshape)batch_normalization_3/batchnorm/add_1:z:0flatten_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_12/MatMulMatMulflatten_3/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOpA^attention_block_2/layer_normalization_4/batchnorm/ReadVariableOpE^attention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpA^attention_block_2/layer_normalization_5/batchnorm/ReadVariableOpE^attention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpM^attention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpW^attention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp@^attention_block_2/multi_head_attention_2/key/add/ReadVariableOpJ^attention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpB^attention_block_2/multi_head_attention_2/query/add/ReadVariableOpL^attention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpB^attention_block_2/multi_head_attention_2/value/add/ReadVariableOpL^attention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?^attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOpA^attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp?^attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOpA^attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp1^batch_normalization_3/batchnorm/ReadVariableOp_11^batch_normalization_3/batchnorm/ReadVariableOp_23^batch_normalization_3/batchnorm/mul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2
@attention_block_2/layer_normalization_4/batchnorm/ReadVariableOp@attention_block_2/layer_normalization_4/batchnorm/ReadVariableOp2
Dattention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpDattention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp2
@attention_block_2/layer_normalization_5/batchnorm/ReadVariableOp@attention_block_2/layer_normalization_5/batchnorm/ReadVariableOp2
Dattention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpDattention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp2
Lattention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpLattention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp2°
Vattention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpVattention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2
?attention_block_2/multi_head_attention_2/key/add/ReadVariableOp?attention_block_2/multi_head_attention_2/key/add/ReadVariableOp2
Iattention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpIattention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2
Aattention_block_2/multi_head_attention_2/query/add/ReadVariableOpAattention_block_2/multi_head_attention_2/query/add/ReadVariableOp2
Kattention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpKattention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2
Aattention_block_2/multi_head_attention_2/value/add/ReadVariableOpAattention_block_2/multi_head_attention_2/value/add/ReadVariableOp2
Kattention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpKattention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2
>attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOp>attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOp2
@attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp@attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp2
>attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOp>attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOp2
@attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp@attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2d
0batch_normalization_3/batchnorm/ReadVariableOp_10batch_normalization_3/batchnorm/ReadVariableOp_12d
0batch_normalization_3/batchnorm/ReadVariableOp_20batch_normalization_3/batchnorm/ReadVariableOp_22h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë	
ö
D__inference_dense_12_layer_call_and_return_conditional_losses_141274

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø

)__inference_dense_11_layer_call_fn_143112

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_140846s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ô
µ
2__inference_attention_block_2_layer_call_fn_142509

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:

unknown_13:

unknown_14:
identity¢StatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_attention_block_2_layer_call_and_return_conditional_losses_141213s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
­
ý
D__inference_dense_10_layer_call_and_return_conditional_losses_140810

inputs4
!tensordot_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
­
ý
D__inference_dense_10_layer_call_and_return_conditional_losses_143103

inputs4
!tensordot_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Æ'
ñ	
C__inference_model_3_layer_call_and_return_conditional_losses_141912
input_3"
dense_9_141857:

dense_9_141859:	.
attention_block_2_141863:*
attention_block_2_141865:.
attention_block_2_141867:*
attention_block_2_141869:.
attention_block_2_141871:*
attention_block_2_141873:.
attention_block_2_141875:&
attention_block_2_141877:&
attention_block_2_141879:&
attention_block_2_141881:+
attention_block_2_141883:	'
attention_block_2_141885:	+
attention_block_2_141887:	&
attention_block_2_141889:&
attention_block_2_141891:&
attention_block_2_141893:*
batch_normalization_3_141896:*
batch_normalization_3_141898:*
batch_normalization_3_141900:*
batch_normalization_3_141902:"
dense_12_141906:	
dense_12_141908:
identity¢)attention_block_2/StatefulPartitionedCall¢-batch_normalization_3/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallñ
dense_9/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_9_141857dense_9_141859*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_141065ã
reshape_3/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_3_layer_call_and_return_conditional_losses_141084¿
)attention_block_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0attention_block_2_141863attention_block_2_141865attention_block_2_141867attention_block_2_141869attention_block_2_141871attention_block_2_141873attention_block_2_141875attention_block_2_141877attention_block_2_141879attention_block_2_141881attention_block_2_141883attention_block_2_141885attention_block_2_141887attention_block_2_141889attention_block_2_141891attention_block_2_141893*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_attention_block_2_layer_call_and_return_conditional_losses_141528
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall2attention_block_2/StatefulPartitionedCall:output:0batch_normalization_3_141896batch_normalization_3_141898batch_normalization_3_141900batch_normalization_3_141902*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_141036î
flatten_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_141262
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_12_141906dense_12_141908*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_141274x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿç
NoOpNoOp*^attention_block_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2V
)attention_block_2/StatefulPartitionedCall)attention_block_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Q M
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
Ð
ü
D__inference_dense_11_layer_call_and_return_conditional_losses_143142

inputs4
!tensordot_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
º
´
H__inference_sequential_2_layer_call_and_return_conditional_losses_140853

inputs"
dense_10_140811:	
dense_10_140813:	"
dense_11_140847:	
dense_11_140849:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCallø
 dense_10/StatefulPartitionedCallStatefulPartitionedCallinputsdense_10_140811dense_10_140813*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_140810
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_140847dense_11_140849*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_140846|
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ã'
ð	
C__inference_model_3_layer_call_and_return_conditional_losses_141692

inputs"
dense_9_141637:

dense_9_141639:	.
attention_block_2_141643:*
attention_block_2_141645:.
attention_block_2_141647:*
attention_block_2_141649:.
attention_block_2_141651:*
attention_block_2_141653:.
attention_block_2_141655:&
attention_block_2_141657:&
attention_block_2_141659:&
attention_block_2_141661:+
attention_block_2_141663:	'
attention_block_2_141665:	+
attention_block_2_141667:	&
attention_block_2_141669:&
attention_block_2_141671:&
attention_block_2_141673:*
batch_normalization_3_141676:*
batch_normalization_3_141678:*
batch_normalization_3_141680:*
batch_normalization_3_141682:"
dense_12_141686:	
dense_12_141688:
identity¢)attention_block_2/StatefulPartitionedCall¢-batch_normalization_3/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallð
dense_9/StatefulPartitionedCallStatefulPartitionedCallinputsdense_9_141637dense_9_141639*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_141065ã
reshape_3/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_3_layer_call_and_return_conditional_losses_141084¿
)attention_block_2/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0attention_block_2_141643attention_block_2_141645attention_block_2_141647attention_block_2_141649attention_block_2_141651attention_block_2_141653attention_block_2_141655attention_block_2_141657attention_block_2_141659attention_block_2_141661attention_block_2_141663attention_block_2_141665attention_block_2_141667attention_block_2_141669attention_block_2_141671attention_block_2_141673*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_attention_block_2_layer_call_and_return_conditional_losses_141528
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall2attention_block_2/StatefulPartitionedCall:output:0batch_normalization_3_141676batch_normalization_3_141678batch_normalization_3_141680batch_normalization_3_141682*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_141036î
flatten_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_141262
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_12_141686dense_12_141688*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_141274x
IdentityIdentity)dense_12/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿç
NoOpNoOp*^attention_block_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2V
)attention_block_2/StatefulPartitionedCall)attention_block_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý%
ê
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_142893

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ¢
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù

a
E__inference_reshape_3_layer_call_and_return_conditional_losses_141084

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


(__inference_model_3_layer_call_fn_141332
input_3
unknown:

	unknown_0:	
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:	

unknown_22:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_model_3_layer_call_and_return_conditional_losses_141281o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
Ð
ü
D__inference_dense_11_layer_call_and_return_conditional_losses_140846

inputs4
!tensordot_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ùÉ
§
C__inference_model_3_layer_call_and_return_conditional_losses_142434

inputs:
&dense_9_matmul_readvariableop_resource:
6
'dense_9_biasadd_readvariableop_resource:	j
Tattention_block_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource:\
Jattention_block_2_multi_head_attention_2_query_add_readvariableop_resource:h
Rattention_block_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource:Z
Hattention_block_2_multi_head_attention_2_key_add_readvariableop_resource:j
Tattention_block_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource:\
Jattention_block_2_multi_head_attention_2_value_add_readvariableop_resource:u
_attention_block_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:c
Uattention_block_2_multi_head_attention_2_attention_output_add_readvariableop_resource:[
Mattention_block_2_layer_normalization_4_batchnorm_mul_readvariableop_resource:W
Iattention_block_2_layer_normalization_4_batchnorm_readvariableop_resource:\
Iattention_block_2_sequential_2_dense_10_tensordot_readvariableop_resource:	V
Gattention_block_2_sequential_2_dense_10_biasadd_readvariableop_resource:	\
Iattention_block_2_sequential_2_dense_11_tensordot_readvariableop_resource:	U
Gattention_block_2_sequential_2_dense_11_biasadd_readvariableop_resource:[
Mattention_block_2_layer_normalization_5_batchnorm_mul_readvariableop_resource:W
Iattention_block_2_layer_normalization_5_batchnorm_readvariableop_resource:K
=batch_normalization_3_assignmovingavg_readvariableop_resource:M
?batch_normalization_3_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_3_batchnorm_mul_readvariableop_resource:E
7batch_normalization_3_batchnorm_readvariableop_resource::
'dense_12_matmul_readvariableop_resource:	6
(dense_12_biasadd_readvariableop_resource:
identity¢@attention_block_2/layer_normalization_4/batchnorm/ReadVariableOp¢Dattention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp¢@attention_block_2/layer_normalization_5/batchnorm/ReadVariableOp¢Dattention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp¢Lattention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp¢Vattention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp¢?attention_block_2/multi_head_attention_2/key/add/ReadVariableOp¢Iattention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp¢Aattention_block_2/multi_head_attention_2/query/add/ReadVariableOp¢Kattention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp¢Aattention_block_2/multi_head_attention_2/value/add/ReadVariableOp¢Kattention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp¢>attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOp¢@attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp¢>attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOp¢@attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp¢%batch_normalization_3/AssignMovingAvg¢4batch_normalization_3/AssignMovingAvg/ReadVariableOp¢'batch_normalization_3/AssignMovingAvg_1¢6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_3/batchnorm/ReadVariableOp¢2batch_normalization_3/batchnorm/mul/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_9/BiasAdd/ReadVariableOp¢dense_9/MatMul/ReadVariableOp
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0z
dense_9/MatMulMatMulinputs%dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dense_9/ReluReludense_9/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
reshape_3/ShapeShapedense_9/Relu:activations:0*
T0*
_output_shapes
:g
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :@[
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :·
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_3/ReshapeReshapedense_9/Relu:activations:0 reshape_3/Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ä
Kattention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpTattention_block_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0
<attention_block_2/multi_head_attention_2/query/einsum/EinsumEinsumreshape_3/Reshape:output:0Sattention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abdeÌ
Aattention_block_2/multi_head_attention_2/query/add/ReadVariableOpReadVariableOpJattention_block_2_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes

:*
dtype0
2attention_block_2/multi_head_attention_2/query/addAddV2Eattention_block_2/multi_head_attention_2/query/einsum/Einsum:output:0Iattention_block_2/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@à
Iattention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOpRattention_block_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0
:attention_block_2/multi_head_attention_2/key/einsum/EinsumEinsumreshape_3/Reshape:output:0Qattention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abdeÈ
?attention_block_2/multi_head_attention_2/key/add/ReadVariableOpReadVariableOpHattention_block_2_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes

:*
dtype0
0attention_block_2/multi_head_attention_2/key/addAddV2Cattention_block_2/multi_head_attention_2/key/einsum/Einsum:output:0Gattention_block_2/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ä
Kattention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpTattention_block_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0
<attention_block_2/multi_head_attention_2/value/einsum/EinsumEinsumreshape_3/Reshape:output:0Sattention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabc,cde->abdeÌ
Aattention_block_2/multi_head_attention_2/value/add/ReadVariableOpReadVariableOpJattention_block_2_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes

:*
dtype0
2attention_block_2/multi_head_attention_2/value/addAddV2Eattention_block_2/multi_head_attention_2/value/einsum/Einsum:output:0Iattention_block_2/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
.attention_block_2/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Þ
,attention_block_2/multi_head_attention_2/MulMul6attention_block_2/multi_head_attention_2/query/add:z:07attention_block_2/multi_head_attention_2/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
6attention_block_2/multi_head_attention_2/einsum/EinsumEinsum4attention_block_2/multi_head_attention_2/key/add:z:00attention_block_2/multi_head_attention_2/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
equationaecd,abcd->acbe¾
8attention_block_2/multi_head_attention_2/softmax/SoftmaxSoftmax?attention_block_2/multi_head_attention_2/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 
8attention_block_2/multi_head_attention_2/einsum_1/EinsumEinsumBattention_block_2/multi_head_attention_2/softmax/Softmax:softmax:06attention_block_2/multi_head_attention_2/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationacbe,aecd->abcdú
Vattention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_attention_block_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype0Ð
Gattention_block_2/multi_head_attention_2/attention_output/einsum/EinsumEinsumAattention_block_2/multi_head_attention_2/einsum_1/Einsum:output:0^attention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
equationabcd,cde->abeÞ
Lattention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpUattention_block_2_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0¤
=attention_block_2/multi_head_attention_2/attention_output/addAddV2Pattention_block_2/multi_head_attention_2/attention_output/einsum/Einsum:output:0Tattention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
)attention_block_2/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?Û
'attention_block_2/dropout_4/dropout/MulMulAattention_block_2/multi_head_attention_2/attention_output/add:z:02attention_block_2/dropout_4/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)attention_block_2/dropout_4/dropout/ShapeShapeAattention_block_2/multi_head_attention_2/attention_output/add:z:0*
T0*
_output_shapes
:È
@attention_block_2/dropout_4/dropout/random_uniform/RandomUniformRandomUniform2attention_block_2/dropout_4/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0w
2attention_block_2/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=þ
0attention_block_2/dropout_4/dropout/GreaterEqualGreaterEqualIattention_block_2/dropout_4/dropout/random_uniform/RandomUniform:output:0;attention_block_2/dropout_4/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
(attention_block_2/dropout_4/dropout/CastCast4attention_block_2/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
)attention_block_2/dropout_4/dropout/Mul_1Mul+attention_block_2/dropout_4/dropout/Mul:z:0,attention_block_2/dropout_4/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
attention_block_2/addAddV2reshape_3/Reshape:output:0-attention_block_2/dropout_4/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Fattention_block_2/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ï
4attention_block_2/layer_normalization_4/moments/meanMeanattention_block_2/add:z:0Oattention_block_2/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(Á
<attention_block_2/layer_normalization_4/moments/StopGradientStopGradient=attention_block_2/layer_normalization_4/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
Aattention_block_2/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceattention_block_2/add:z:0Eattention_block_2/layer_normalization_4/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Jattention_block_2/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8attention_block_2/layer_normalization_4/moments/varianceMeanEattention_block_2/layer_normalization_4/moments/SquaredDifference:z:0Sattention_block_2/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(|
7attention_block_2/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5attention_block_2/layer_normalization_4/batchnorm/addAddV2Aattention_block_2/layer_normalization_4/moments/variance:output:0@attention_block_2/layer_normalization_4/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@±
7attention_block_2/layer_normalization_4/batchnorm/RsqrtRsqrt9attention_block_2/layer_normalization_4/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Î
Dattention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpMattention_block_2_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ý
5attention_block_2/layer_normalization_4/batchnorm/mulMul;attention_block_2/layer_normalization_4/batchnorm/Rsqrt:y:0Lattention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ê
7attention_block_2/layer_normalization_4/batchnorm/mul_1Mulattention_block_2/add:z:09attention_block_2/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
7attention_block_2/layer_normalization_4/batchnorm/mul_2Mul=attention_block_2/layer_normalization_4/moments/mean:output:09attention_block_2/layer_normalization_4/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
@attention_block_2/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOpIattention_block_2_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ù
5attention_block_2/layer_normalization_4/batchnorm/subSubHattention_block_2/layer_normalization_4/batchnorm/ReadVariableOp:value:0;attention_block_2/layer_normalization_4/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
7attention_block_2/layer_normalization_4/batchnorm/add_1AddV2;attention_block_2/layer_normalization_4/batchnorm/mul_1:z:09attention_block_2/layer_normalization_4/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ë
@attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOpReadVariableOpIattention_block_2_sequential_2_dense_10_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0
6attention_block_2/sequential_2/dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
6attention_block_2/sequential_2/dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¢
7attention_block_2/sequential_2/dense_10/Tensordot/ShapeShape;attention_block_2/layer_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:
?attention_block_2/sequential_2/dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
:attention_block_2/sequential_2/dense_10/Tensordot/GatherV2GatherV2@attention_block_2/sequential_2/dense_10/Tensordot/Shape:output:0?attention_block_2/sequential_2/dense_10/Tensordot/free:output:0Hattention_block_2/sequential_2/dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Aattention_block_2/sequential_2/dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
<attention_block_2/sequential_2/dense_10/Tensordot/GatherV2_1GatherV2@attention_block_2/sequential_2/dense_10/Tensordot/Shape:output:0?attention_block_2/sequential_2/dense_10/Tensordot/axes:output:0Jattention_block_2/sequential_2/dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
7attention_block_2/sequential_2/dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: æ
6attention_block_2/sequential_2/dense_10/Tensordot/ProdProdCattention_block_2/sequential_2/dense_10/Tensordot/GatherV2:output:0@attention_block_2/sequential_2/dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: 
9attention_block_2/sequential_2/dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ì
8attention_block_2/sequential_2/dense_10/Tensordot/Prod_1ProdEattention_block_2/sequential_2/dense_10/Tensordot/GatherV2_1:output:0Battention_block_2/sequential_2/dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=attention_block_2/sequential_2/dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
8attention_block_2/sequential_2/dense_10/Tensordot/concatConcatV2?attention_block_2/sequential_2/dense_10/Tensordot/free:output:0?attention_block_2/sequential_2/dense_10/Tensordot/axes:output:0Fattention_block_2/sequential_2/dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ñ
7attention_block_2/sequential_2/dense_10/Tensordot/stackPack?attention_block_2/sequential_2/dense_10/Tensordot/Prod:output:0Aattention_block_2/sequential_2/dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:þ
;attention_block_2/sequential_2/dense_10/Tensordot/transpose	Transpose;attention_block_2/layer_normalization_4/batchnorm/add_1:z:0Aattention_block_2/sequential_2/dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
9attention_block_2/sequential_2/dense_10/Tensordot/ReshapeReshape?attention_block_2/sequential_2/dense_10/Tensordot/transpose:y:0@attention_block_2/sequential_2/dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
8attention_block_2/sequential_2/dense_10/Tensordot/MatMulMatMulBattention_block_2/sequential_2/dense_10/Tensordot/Reshape:output:0Hattention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9attention_block_2/sequential_2/dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
?attention_block_2/sequential_2/dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
:attention_block_2/sequential_2/dense_10/Tensordot/concat_1ConcatV2Cattention_block_2/sequential_2/dense_10/Tensordot/GatherV2:output:0Battention_block_2/sequential_2/dense_10/Tensordot/Const_2:output:0Hattention_block_2/sequential_2/dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ü
1attention_block_2/sequential_2/dense_10/TensordotReshapeBattention_block_2/sequential_2/dense_10/Tensordot/MatMul:product:0Cattention_block_2/sequential_2/dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ã
>attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOpReadVariableOpGattention_block_2_sequential_2_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0õ
/attention_block_2/sequential_2/dense_10/BiasAddBiasAdd:attention_block_2/sequential_2/dense_10/Tensordot:output:0Fattention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
,attention_block_2/sequential_2/dense_10/ReluRelu8attention_block_2/sequential_2/dense_10/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ë
@attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOpReadVariableOpIattention_block_2_sequential_2_dense_11_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0
6attention_block_2/sequential_2/dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
6attention_block_2/sequential_2/dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ¡
7attention_block_2/sequential_2/dense_11/Tensordot/ShapeShape:attention_block_2/sequential_2/dense_10/Relu:activations:0*
T0*
_output_shapes
:
?attention_block_2/sequential_2/dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
:attention_block_2/sequential_2/dense_11/Tensordot/GatherV2GatherV2@attention_block_2/sequential_2/dense_11/Tensordot/Shape:output:0?attention_block_2/sequential_2/dense_11/Tensordot/free:output:0Hattention_block_2/sequential_2/dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Aattention_block_2/sequential_2/dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
<attention_block_2/sequential_2/dense_11/Tensordot/GatherV2_1GatherV2@attention_block_2/sequential_2/dense_11/Tensordot/Shape:output:0?attention_block_2/sequential_2/dense_11/Tensordot/axes:output:0Jattention_block_2/sequential_2/dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
7attention_block_2/sequential_2/dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: æ
6attention_block_2/sequential_2/dense_11/Tensordot/ProdProdCattention_block_2/sequential_2/dense_11/Tensordot/GatherV2:output:0@attention_block_2/sequential_2/dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: 
9attention_block_2/sequential_2/dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ì
8attention_block_2/sequential_2/dense_11/Tensordot/Prod_1ProdEattention_block_2/sequential_2/dense_11/Tensordot/GatherV2_1:output:0Battention_block_2/sequential_2/dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=attention_block_2/sequential_2/dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
8attention_block_2/sequential_2/dense_11/Tensordot/concatConcatV2?attention_block_2/sequential_2/dense_11/Tensordot/free:output:0?attention_block_2/sequential_2/dense_11/Tensordot/axes:output:0Fattention_block_2/sequential_2/dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ñ
7attention_block_2/sequential_2/dense_11/Tensordot/stackPack?attention_block_2/sequential_2/dense_11/Tensordot/Prod:output:0Aattention_block_2/sequential_2/dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:þ
;attention_block_2/sequential_2/dense_11/Tensordot/transpose	Transpose:attention_block_2/sequential_2/dense_10/Relu:activations:0Aattention_block_2/sequential_2/dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
9attention_block_2/sequential_2/dense_11/Tensordot/ReshapeReshape?attention_block_2/sequential_2/dense_11/Tensordot/transpose:y:0@attention_block_2/sequential_2/dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
8attention_block_2/sequential_2/dense_11/Tensordot/MatMulMatMulBattention_block_2/sequential_2/dense_11/Tensordot/Reshape:output:0Hattention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9attention_block_2/sequential_2/dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
?attention_block_2/sequential_2/dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
:attention_block_2/sequential_2/dense_11/Tensordot/concat_1ConcatV2Cattention_block_2/sequential_2/dense_11/Tensordot/GatherV2:output:0Battention_block_2/sequential_2/dense_11/Tensordot/Const_2:output:0Hattention_block_2/sequential_2/dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:û
1attention_block_2/sequential_2/dense_11/TensordotReshapeBattention_block_2/sequential_2/dense_11/Tensordot/MatMul:product:0Cattention_block_2/sequential_2/dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
>attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOpReadVariableOpGattention_block_2_sequential_2_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ô
/attention_block_2/sequential_2/dense_11/BiasAddBiasAdd:attention_block_2/sequential_2/dense_11/Tensordot:output:0Fattention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
)attention_block_2/dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?Ò
'attention_block_2/dropout_5/dropout/MulMul8attention_block_2/sequential_2/dense_11/BiasAdd:output:02attention_block_2/dropout_5/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)attention_block_2/dropout_5/dropout/ShapeShape8attention_block_2/sequential_2/dense_11/BiasAdd:output:0*
T0*
_output_shapes
:È
@attention_block_2/dropout_5/dropout/random_uniform/RandomUniformRandomUniform2attention_block_2/dropout_5/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0w
2attention_block_2/dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=þ
0attention_block_2/dropout_5/dropout/GreaterEqualGreaterEqualIattention_block_2/dropout_5/dropout/random_uniform/RandomUniform:output:0;attention_block_2/dropout_5/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
(attention_block_2/dropout_5/dropout/CastCast4attention_block_2/dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
)attention_block_2/dropout_5/dropout/Mul_1Mul+attention_block_2/dropout_5/dropout/Mul:z:0,attention_block_2/dropout_5/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
attention_block_2/add_1AddV2;attention_block_2/layer_normalization_4/batchnorm/add_1:z:0-attention_block_2/dropout_5/dropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Fattention_block_2/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ñ
4attention_block_2/layer_normalization_5/moments/meanMeanattention_block_2/add_1:z:0Oattention_block_2/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(Á
<attention_block_2/layer_normalization_5/moments/StopGradientStopGradient=attention_block_2/layer_normalization_5/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ð
Aattention_block_2/layer_normalization_5/moments/SquaredDifferenceSquaredDifferenceattention_block_2/add_1:z:0Eattention_block_2/layer_normalization_5/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Jattention_block_2/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:£
8attention_block_2/layer_normalization_5/moments/varianceMeanEattention_block_2/layer_normalization_5/moments/SquaredDifference:z:0Sattention_block_2/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(|
7attention_block_2/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ù
5attention_block_2/layer_normalization_5/batchnorm/addAddV2Aattention_block_2/layer_normalization_5/moments/variance:output:0@attention_block_2/layer_normalization_5/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@±
7attention_block_2/layer_normalization_5/batchnorm/RsqrtRsqrt9attention_block_2/layer_normalization_5/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Î
Dattention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpMattention_block_2_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ý
5attention_block_2/layer_normalization_5/batchnorm/mulMul;attention_block_2/layer_normalization_5/batchnorm/Rsqrt:y:0Lattention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ì
7attention_block_2/layer_normalization_5/batchnorm/mul_1Mulattention_block_2/add_1:z:09attention_block_2/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
7attention_block_2/layer_normalization_5/batchnorm/mul_2Mul=attention_block_2/layer_normalization_5/moments/mean:output:09attention_block_2/layer_normalization_5/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
@attention_block_2/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOpIattention_block_2_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ù
5attention_block_2/layer_normalization_5/batchnorm/subSubHattention_block_2/layer_normalization_5/batchnorm/ReadVariableOp:value:0;attention_block_2/layer_normalization_5/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
7attention_block_2/layer_normalization_5/batchnorm/add_1AddV2;attention_block_2/layer_normalization_5/batchnorm/mul_1:z:09attention_block_2/layer_normalization_5/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
4batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ä
"batch_normalization_3/moments/meanMean;attention_block_2/layer_normalization_5/batchnorm/add_1:z:0=batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
*batch_normalization_3/moments/StopGradientStopGradient+batch_normalization_3/moments/mean:output:0*
T0*"
_output_shapes
:ì
/batch_normalization_3/moments/SquaredDifferenceSquaredDifference;attention_block_2/layer_normalization_5/batchnorm/add_1:z:03batch_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
8batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ä
&batch_normalization_3/moments/varianceMean3batch_normalization_3/moments/SquaredDifference:z:0Abatch_normalization_3/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
%batch_normalization_3/moments/SqueezeSqueeze+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
  
'batch_normalization_3/moments/Squeeze_1Squeeze/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<®
4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_3_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ã
)batch_normalization_3/AssignMovingAvg/subSub<batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_3/moments/Squeeze:output:0*
T0*
_output_shapes
:º
)batch_normalization_3/AssignMovingAvg/mulMul-batch_normalization_3/AssignMovingAvg/sub:z:04batch_normalization_3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
%batch_normalization_3/AssignMovingAvgAssignSubVariableOp=batch_normalization_3_assignmovingavg_readvariableop_resource-batch_normalization_3/AssignMovingAvg/mul:z:05^batch_normalization_3/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<²
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_3_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0É
+batch_normalization_3/AssignMovingAvg_1/subSub>batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_3/moments/Squeeze_1:output:0*
T0*
_output_shapes
:À
+batch_normalization_3/AssignMovingAvg_1/mulMul/batch_normalization_3/AssignMovingAvg_1/sub:z:06batch_normalization_3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
'batch_normalization_3/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_3_assignmovingavg_1_readvariableop_resource/batch_normalization_3/AssignMovingAvg_1/mul:z:07^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:³
#batch_normalization_3/batchnorm/addAddV20batch_normalization_3/moments/Squeeze_1:output:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:ª
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¶
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:È
%batch_normalization_3/batchnorm/mul_1Mul;attention_block_2/layer_normalization_5/batchnorm/add_1:z:0'batch_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
%batch_normalization_3/batchnorm/mul_2Mul.batch_normalization_3/moments/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:¢
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0²
#batch_normalization_3/batchnorm/subSub6batch_normalization_3/batchnorm/ReadVariableOp:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:¸
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_3/ReshapeReshape)batch_normalization_3/batchnorm/add_1:z:0flatten_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_12/MatMulMatMulflatten_3/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_12/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
NoOpNoOpA^attention_block_2/layer_normalization_4/batchnorm/ReadVariableOpE^attention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpA^attention_block_2/layer_normalization_5/batchnorm/ReadVariableOpE^attention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpM^attention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpW^attention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp@^attention_block_2/multi_head_attention_2/key/add/ReadVariableOpJ^attention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpB^attention_block_2/multi_head_attention_2/query/add/ReadVariableOpL^attention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpB^attention_block_2/multi_head_attention_2/value/add/ReadVariableOpL^attention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp?^attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOpA^attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp?^attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOpA^attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp&^batch_normalization_3/AssignMovingAvg5^batch_normalization_3/AssignMovingAvg/ReadVariableOp(^batch_normalization_3/AssignMovingAvg_17^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp3^batch_normalization_3/batchnorm/mul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 2
@attention_block_2/layer_normalization_4/batchnorm/ReadVariableOp@attention_block_2/layer_normalization_4/batchnorm/ReadVariableOp2
Dattention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOpDattention_block_2/layer_normalization_4/batchnorm/mul/ReadVariableOp2
@attention_block_2/layer_normalization_5/batchnorm/ReadVariableOp@attention_block_2/layer_normalization_5/batchnorm/ReadVariableOp2
Dattention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOpDattention_block_2/layer_normalization_5/batchnorm/mul/ReadVariableOp2
Lattention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOpLattention_block_2/multi_head_attention_2/attention_output/add/ReadVariableOp2°
Vattention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpVattention_block_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2
?attention_block_2/multi_head_attention_2/key/add/ReadVariableOp?attention_block_2/multi_head_attention_2/key/add/ReadVariableOp2
Iattention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpIattention_block_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2
Aattention_block_2/multi_head_attention_2/query/add/ReadVariableOpAattention_block_2/multi_head_attention_2/query/add/ReadVariableOp2
Kattention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpKattention_block_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2
Aattention_block_2/multi_head_attention_2/value/add/ReadVariableOpAattention_block_2/multi_head_attention_2/value/add/ReadVariableOp2
Kattention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpKattention_block_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2
>attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOp>attention_block_2/sequential_2/dense_10/BiasAdd/ReadVariableOp2
@attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp@attention_block_2/sequential_2/dense_10/Tensordot/ReadVariableOp2
>attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOp>attention_block_2/sequential_2/dense_11/BiasAdd/ReadVariableOp2
@attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp@attention_block_2/sequential_2/dense_11/Tensordot/ReadVariableOp2N
%batch_normalization_3/AssignMovingAvg%batch_normalization_3/AssignMovingAvg2l
4batch_normalization_3/AssignMovingAvg/ReadVariableOp4batch_normalization_3/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_3/AssignMovingAvg_1'batch_normalization_3/AssignMovingAvg_12p
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á?
â
H__inference_sequential_2_layer_call_and_return_conditional_losses_143063

inputs=
*dense_10_tensordot_readvariableop_resource:	7
(dense_10_biasadd_readvariableop_resource:	=
*dense_11_tensordot_readvariableop_resource:	6
(dense_11_biasadd_readvariableop_resource:
identity¢dense_10/BiasAdd/ReadVariableOp¢!dense_10/Tensordot/ReadVariableOp¢dense_11/BiasAdd/ReadVariableOp¢!dense_11/Tensordot/ReadVariableOp
!dense_10/Tensordot/ReadVariableOpReadVariableOp*dense_10_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0a
dense_10/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_10/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_10/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_10/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_10/Tensordot/GatherV2GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/free:output:0)dense_10/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_10/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_10/Tensordot/GatherV2_1GatherV2!dense_10/Tensordot/Shape:output:0 dense_10/Tensordot/axes:output:0+dense_10/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_10/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_10/Tensordot/ProdProd$dense_10/Tensordot/GatherV2:output:0!dense_10/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_10/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_10/Tensordot/Prod_1Prod&dense_10/Tensordot/GatherV2_1:output:0#dense_10/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_10/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_10/Tensordot/concatConcatV2 dense_10/Tensordot/free:output:0 dense_10/Tensordot/axes:output:0'dense_10/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_10/Tensordot/stackPack dense_10/Tensordot/Prod:output:0"dense_10/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_10/Tensordot/transpose	Transposeinputs"dense_10/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
dense_10/Tensordot/ReshapeReshape dense_10/Tensordot/transpose:y:0!dense_10/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
dense_10/Tensordot/MatMulMatMul#dense_10/Tensordot/Reshape:output:0)dense_10/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dense_10/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_10/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_10/Tensordot/concat_1ConcatV2$dense_10/Tensordot/GatherV2:output:0#dense_10/Tensordot/Const_2:output:0)dense_10/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_10/TensordotReshape#dense_10/Tensordot/MatMul:product:0$dense_10/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_10/BiasAddBiasAdddense_10/Tensordot:output:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!dense_11/Tensordot/ReadVariableOpReadVariableOp*dense_11_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0a
dense_11/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_11/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_11/Tensordot/ShapeShapedense_10/Relu:activations:0*
T0*
_output_shapes
:b
 dense_11/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_11/Tensordot/GatherV2GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/free:output:0)dense_11/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_11/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_11/Tensordot/GatherV2_1GatherV2!dense_11/Tensordot/Shape:output:0 dense_11/Tensordot/axes:output:0+dense_11/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_11/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_11/Tensordot/ProdProd$dense_11/Tensordot/GatherV2:output:0!dense_11/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_11/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_11/Tensordot/Prod_1Prod&dense_11/Tensordot/GatherV2_1:output:0#dense_11/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_11/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_11/Tensordot/concatConcatV2 dense_11/Tensordot/free:output:0 dense_11/Tensordot/axes:output:0'dense_11/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_11/Tensordot/stackPack dense_11/Tensordot/Prod:output:0"dense_11/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¡
dense_11/Tensordot/transpose	Transposedense_10/Relu:activations:0"dense_11/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
dense_11/Tensordot/ReshapeReshape dense_11/Tensordot/transpose:y:0!dense_11/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_11/Tensordot/MatMulMatMul#dense_11/Tensordot/Reshape:output:0)dense_11/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_11/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_11/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_11/Tensordot/concat_1ConcatV2$dense_11/Tensordot/GatherV2:output:0#dense_11/Tensordot/Const_2:output:0)dense_11/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_11/TensordotReshape#dense_11/Tensordot/MatMul:product:0$dense_11/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_11/BiasAddBiasAdddense_11/Tensordot:output:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
IdentityIdentitydense_11/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ò
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp"^dense_10/Tensordot/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp"^dense_11/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2F
!dense_10/Tensordot/ReadVariableOp!dense_10/Tensordot/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2F
!dense_11/Tensordot/ReadVariableOp!dense_11/Tensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¦

÷
C__inference_dense_9_layer_call_and_return_conditional_losses_141065

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô
µ
2__inference_attention_block_2_layer_call_fn_142546

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:	

unknown_10:	

unknown_11:	

unknown_12:

unknown_13:

unknown_14:
identity¢StatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_attention_block_2_layer_call_and_return_conditional_losses_141528s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿ@: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¬
F
*__inference_reshape_3_layer_call_fn_142459

inputs
identity·
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_reshape_3_layer_call_and_return_conditional_losses_141084d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë

$__inference_signature_wrapper_141967
input_3
unknown:

	unknown_0:	
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:	

unknown_22:
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_140772o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¬
serving_default
<
input_31
serving_default_input_3:0ÿÿÿÿÿÿÿÿÿ<
dense_120
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ôï

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
ó
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$att
%ffn
&
layernorm1
'
layernorm2
(dropout1
)dropout2"
_tf_keras_layer
ê
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0axis
	1gamma
2beta
3moving_mean
4moving_variance"
_tf_keras_layer
¥
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
»
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias"
_tf_keras_layer
Ö
0
1
C2
D3
E4
F5
G6
H7
I8
J9
K10
L11
M12
N13
O14
P15
Q16
R17
118
219
320
421
A22
B23"
trackable_list_wrapper
Æ
0
1
C2
D3
E4
F5
G6
H7
I8
J9
K10
L11
M12
N13
O14
P15
Q16
R17
118
219
A20
B21"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Õ
Xtrace_0
Ytrace_1
Ztrace_2
[trace_32ê
(__inference_model_3_layer_call_fn_141332
(__inference_model_3_layer_call_fn_142020
(__inference_model_3_layer_call_fn_142073
(__inference_model_3_layer_call_fn_141796¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zXtrace_0zYtrace_1zZtrace_2z[trace_3
Á
\trace_0
]trace_1
^trace_2
_trace_32Ö
C__inference_model_3_layer_call_and_return_conditional_losses_142240
C__inference_model_3_layer_call_and_return_conditional_losses_142434
C__inference_model_3_layer_call_and_return_conditional_losses_141854
C__inference_model_3_layer_call_and_return_conditional_losses_141912¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z\trace_0z]trace_1z^trace_2z_trace_3
ÌBÉ
!__inference__wrapped_model_140772input_3"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
`serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ì
ftrace_02Ï
(__inference_dense_9_layer_call_fn_142443¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zftrace_0

gtrace_02ê
C__inference_dense_9_layer_call_and_return_conditional_losses_142454¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zgtrace_0
": 
2dense_9/kernel
:2dense_9/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
î
mtrace_02Ñ
*__inference_reshape_3_layer_call_fn_142459¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zmtrace_0

ntrace_02ì
E__inference_reshape_3_layer_call_and_return_conditional_losses_142472¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zntrace_0

C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15"
trackable_list_wrapper

C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15"
trackable_list_wrapper
 "
trackable_list_wrapper
­
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
Ð
ttrace_0
utrace_12
2__inference_attention_block_2_layer_call_fn_142509
2__inference_attention_block_2_layer_call_fn_142546®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zttrace_0zutrace_1

vtrace_0
wtrace_12Ï
M__inference_attention_block_2_layer_call_and_return_conditional_losses_142673
M__inference_attention_block_2_layer_call_and_return_conditional_losses_142813®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zvtrace_0zwtrace_1

x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses
~_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense"
_tf_keras_layer

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ë
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Ogamma
Pbeta"
_tf_keras_layer
Ë
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	Qgamma
Rbeta"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
 _random_generator"
_tf_keras_layer
Ã
¡	variables
¢trainable_variables
£regularization_losses
¤	keras_api
¥__call__
+¦&call_and_return_all_conditional_losses
§_random_generator"
_tf_keras_layer
<
10
21
32
43"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
á
­trace_0
®trace_12¦
6__inference_batch_normalization_3_layer_call_fn_142826
6__inference_batch_normalization_3_layer_call_fn_142839³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z­trace_0z®trace_1

¯trace_0
°trace_12Ü
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_142859
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_142893³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¯trace_0z°trace_1
 "
trackable_list_wrapper
):'2batch_normalization_3/gamma
(:&2batch_normalization_3/beta
1:/ (2!batch_normalization_3/moving_mean
5:3 (2%batch_normalization_3/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
ð
¶trace_02Ñ
*__inference_flatten_3_layer_call_fn_142898¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¶trace_0

·trace_02ì
E__inference_flatten_3_layer_call_and_return_conditional_losses_142904¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z·trace_0
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
ï
½trace_02Ð
)__inference_dense_12_layer_call_fn_142913¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z½trace_0

¾trace_02ë
D__inference_dense_12_layer_call_and_return_conditional_losses_142923¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¾trace_0
": 	2dense_12/kernel
:2dense_12/bias
K:I25attention_block_2/multi_head_attention_2/query/kernel
E:C23attention_block_2/multi_head_attention_2/query/bias
I:G23attention_block_2/multi_head_attention_2/key/kernel
C:A21attention_block_2/multi_head_attention_2/key/bias
K:I25attention_block_2/multi_head_attention_2/value/kernel
E:C23attention_block_2/multi_head_attention_2/value/bias
V:T2@attention_block_2/multi_head_attention_2/attention_output/kernel
L:J2>attention_block_2/multi_head_attention_2/attention_output/bias
": 	2dense_10/kernel
:2dense_10/bias
": 	2dense_11/kernel
:2dense_11/bias
;:92-attention_block_2/layer_normalization_4/gamma
::82,attention_block_2/layer_normalization_4/beta
;:92-attention_block_2/layer_normalization_5/gamma
::82,attention_block_2/layer_normalization_5/beta
.
30
41"
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
úB÷
(__inference_model_3_layer_call_fn_141332input_3"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ùBö
(__inference_model_3_layer_call_fn_142020inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ùBö
(__inference_model_3_layer_call_fn_142073inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
(__inference_model_3_layer_call_fn_141796input_3"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
C__inference_model_3_layer_call_and_return_conditional_losses_142240inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
C__inference_model_3_layer_call_and_return_conditional_losses_142434inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
C__inference_model_3_layer_call_and_return_conditional_losses_141854input_3"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
C__inference_model_3_layer_call_and_return_conditional_losses_141912input_3"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ËBÈ
$__inference_signature_wrapper_141967input_3"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ÜBÙ
(__inference_dense_9_layer_call_fn_142443inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_dense_9_layer_call_and_return_conditional_losses_142454inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ÞBÛ
*__inference_reshape_3_layer_call_fn_142459inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ùBö
E__inference_reshape_3_layer_call_and_return_conditional_losses_142472inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
J
$0
%1
&2
'3
(4
)5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
òBï
2__inference_attention_block_2_layer_call_fn_142509inputs"®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
òBï
2__inference_attention_block_2_layer_call_fn_142546inputs"®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
M__inference_attention_block_2_layer_call_and_return_conditional_losses_142673inputs"®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
M__inference_attention_block_2_layer_call_and_return_conditional_losses_142813inputs"®
¥²¡
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
X
C0
D1
E2
F3
G4
H5
I6
J7"
trackable_list_wrapper
X
C0
D1
E2
F3
G4
H5
I6
J7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
2
²
FullArgSpecx
argspm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults

 

 
p 
p 
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
²
FullArgSpecx
argspm
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults

 

 
p 
p 
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô
Ä	variables
Åtrainable_variables
Æregularization_losses
Ç	keras_api
È__call__
+É&call_and_return_all_conditional_losses
Êpartial_output_shape
Ëfull_output_shape

Ckernel
Dbias"
_tf_keras_layer
ô
Ì	variables
Ítrainable_variables
Îregularization_losses
Ï	keras_api
Ð__call__
+Ñ&call_and_return_all_conditional_losses
Òpartial_output_shape
Ófull_output_shape

Ekernel
Fbias"
_tf_keras_layer
ô
Ô	variables
Õtrainable_variables
Öregularization_losses
×	keras_api
Ø__call__
+Ù&call_and_return_all_conditional_losses
Úpartial_output_shape
Ûfull_output_shape

Gkernel
Hbias"
_tf_keras_layer
«
Ü	variables
Ýtrainable_variables
Þregularization_losses
ß	keras_api
à__call__
+á&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
â	variables
ãtrainable_variables
äregularization_losses
å	keras_api
æ__call__
+ç&call_and_return_all_conditional_losses
è_random_generator"
_tf_keras_layer
ô
é	variables
êtrainable_variables
ëregularization_losses
ì	keras_api
í__call__
+î&call_and_return_all_conditional_losses
ïpartial_output_shape
ðfull_output_shape

Ikernel
Jbias"
_tf_keras_layer
Á
ñ	variables
òtrainable_variables
óregularization_losses
ô	keras_api
õ__call__
+ö&call_and_return_all_conditional_losses

Kkernel
Lbias"
_tf_keras_layer
Á
÷	variables
øtrainable_variables
ùregularization_losses
ú	keras_api
û__call__
+ü&call_and_return_all_conditional_losses

Mkernel
Nbias"
_tf_keras_layer
<
K0
L1
M2
N3"
trackable_list_wrapper
<
K0
L1
M2
N3"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ýnon_trainable_variables
þlayers
ÿmetrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ñ
trace_0
trace_1
trace_2
trace_32þ
-__inference_sequential_2_layer_call_fn_140864
-__inference_sequential_2_layer_call_fn_142936
-__inference_sequential_2_layer_call_fn_142949
-__inference_sequential_2_layer_call_fn_140937¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
Ý
trace_0
trace_1
trace_2
trace_32ê
H__inference_sequential_2_layer_call_and_return_conditional_losses_143006
H__inference_sequential_2_layer_call_and_return_conditional_losses_143063
H__inference_sequential_2_layer_call_and_return_conditional_losses_140951
H__inference_sequential_2_layer_call_and_return_conditional_losses_140965¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¡	variables
¢trainable_variables
£regularization_losses
¥__call__
+¦&call_and_return_all_conditional_losses
'¦"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ûBø
6__inference_batch_normalization_3_layer_call_fn_142826inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
6__inference_batch_normalization_3_layer_call_fn_142839inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_142859inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_142893inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ÞBÛ
*__inference_flatten_3_layer_call_fn_142898inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ùBö
E__inference_flatten_3_layer_call_and_return_conditional_losses_142904inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ÝBÚ
)__inference_dense_12_layer_call_fn_142913inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_12_layer_call_and_return_conditional_losses_142923inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
N
~0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
Ä	variables
Åtrainable_variables
Æregularization_losses
È__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
Ì	variables
Ítrainable_variables
Îregularization_losses
Ð__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
Ô	variables
Õtrainable_variables
Öregularization_losses
Ø__call__
+Ù&call_and_return_all_conditional_losses
'Ù"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
Ü	variables
Ýtrainable_variables
Þregularization_losses
à__call__
+á&call_and_return_all_conditional_losses
'á"call_and_return_conditional_losses"
_generic_user_object
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
â	variables
ãtrainable_variables
äregularization_losses
æ__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses"
_generic_user_object
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¹2¶³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
_generic_user_object
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
·non_trainable_variables
¸layers
¹metrics
 ºlayer_regularization_losses
»layer_metrics
é	variables
êtrainable_variables
ëregularization_losses
í__call__
+î&call_and_return_all_conditional_losses
'î"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¼non_trainable_variables
½layers
¾metrics
 ¿layer_regularization_losses
Àlayer_metrics
ñ	variables
òtrainable_variables
óregularization_losses
õ__call__
+ö&call_and_return_all_conditional_losses
'ö"call_and_return_conditional_losses"
_generic_user_object
ï
Átrace_02Ð
)__inference_dense_10_layer_call_fn_143072¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÁtrace_0

Âtrace_02ë
D__inference_dense_10_layer_call_and_return_conditional_losses_143103¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÂtrace_0
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ãnon_trainable_variables
Älayers
Åmetrics
 Ælayer_regularization_losses
Çlayer_metrics
÷	variables
øtrainable_variables
ùregularization_losses
û__call__
+ü&call_and_return_all_conditional_losses
'ü"call_and_return_conditional_losses"
_generic_user_object
ï
Ètrace_02Ð
)__inference_dense_11_layer_call_fn_143112¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÈtrace_0

Étrace_02ë
D__inference_dense_11_layer_call_and_return_conditional_losses_143142¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÉtrace_0
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_sequential_2_layer_call_fn_140864dense_10_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
-__inference_sequential_2_layer_call_fn_142936inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
-__inference_sequential_2_layer_call_fn_142949inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
-__inference_sequential_2_layer_call_fn_140937dense_10_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
H__inference_sequential_2_layer_call_and_return_conditional_losses_143006inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
H__inference_sequential_2_layer_call_and_return_conditional_losses_143063inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¡B
H__inference_sequential_2_layer_call_and_return_conditional_losses_140951dense_10_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¡B
H__inference_sequential_2_layer_call_and_return_conditional_losses_140965dense_10_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÝBÚ
)__inference_dense_10_layer_call_fn_143072inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_10_layer_call_and_return_conditional_losses_143103inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
ÝBÚ
)__inference_dense_11_layer_call_fn_143112inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_11_layer_call_and_return_conditional_losses_143142inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ¨
!__inference__wrapped_model_140772CDEFGHIJOPKLMNQR4132AB1¢.
'¢$
"
input_3ÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_12"
dense_12ÿÿÿÿÿÿÿÿÿÇ
M__inference_attention_block_2_layer_call_and_return_conditional_losses_142673vCDEFGHIJOPKLMNQR7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 Ç
M__inference_attention_block_2_layer_call_and_return_conditional_losses_142813vCDEFGHIJOPKLMNQR7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ@
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 
2__inference_attention_block_2_layer_call_fn_142509iCDEFGHIJOPKLMNQR7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@
2__inference_attention_block_2_layer_call_fn_142546iCDEFGHIJOPKLMNQR7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@Ñ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_142859|4132@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ñ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_142893|3412@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ©
6__inference_batch_normalization_3_layer_call_fn_142826o4132@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©
6__inference_batch_normalization_3_layer_call_fn_142839o3412@¢=
6¢3
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ­
D__inference_dense_10_layer_call_and_return_conditional_losses_143103eKL3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_dense_10_layer_call_fn_143072XKL3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@­
D__inference_dense_11_layer_call_and_return_conditional_losses_143142eMN4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_dense_11_layer_call_fn_143112XMN4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@¥
D__inference_dense_12_layer_call_and_return_conditional_losses_142923]AB0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
)__inference_dense_12_layer_call_fn_142913PAB0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¥
C__inference_dense_9_layer_call_and_return_conditional_losses_142454^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
(__inference_dense_9_layer_call_fn_142443Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¦
E__inference_flatten_3_layer_call_and_return_conditional_losses_142904]3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ~
*__inference_flatten_3_layer_call_fn_142898P3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿÃ
C__inference_model_3_layer_call_and_return_conditional_losses_141854|CDEFGHIJOPKLMNQR4132AB9¢6
/¢,
"
input_3ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ã
C__inference_model_3_layer_call_and_return_conditional_losses_141912|CDEFGHIJOPKLMNQR3412AB9¢6
/¢,
"
input_3ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
C__inference_model_3_layer_call_and_return_conditional_losses_142240{CDEFGHIJOPKLMNQR4132AB8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
C__inference_model_3_layer_call_and_return_conditional_losses_142434{CDEFGHIJOPKLMNQR3412AB8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_model_3_layer_call_fn_141332oCDEFGHIJOPKLMNQR4132AB9¢6
/¢,
"
input_3ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_3_layer_call_fn_141796oCDEFGHIJOPKLMNQR3412AB9¢6
/¢,
"
input_3ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_3_layer_call_fn_142020nCDEFGHIJOPKLMNQR4132AB8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_model_3_layer_call_fn_142073nCDEFGHIJOPKLMNQR3412AB8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¦
E__inference_reshape_3_layer_call_and_return_conditional_losses_142472]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 ~
*__inference_reshape_3_layer_call_fn_142459P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@Â
H__inference_sequential_2_layer_call_and_return_conditional_losses_140951vKLMNC¢@
9¢6
,)
dense_10_inputÿÿÿÿÿÿÿÿÿ@
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 Â
H__inference_sequential_2_layer_call_and_return_conditional_losses_140965vKLMNC¢@
9¢6
,)
dense_10_inputÿÿÿÿÿÿÿÿÿ@
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 º
H__inference_sequential_2_layer_call_and_return_conditional_losses_143006nKLMN;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 º
H__inference_sequential_2_layer_call_and_return_conditional_losses_143063nKLMN;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 
-__inference_sequential_2_layer_call_fn_140864iKLMNC¢@
9¢6
,)
dense_10_inputÿÿÿÿÿÿÿÿÿ@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
-__inference_sequential_2_layer_call_fn_140937iKLMNC¢@
9¢6
,)
dense_10_inputÿÿÿÿÿÿÿÿÿ@
p

 
ª "ÿÿÿÿÿÿÿÿÿ@
-__inference_sequential_2_layer_call_fn_142936aKLMN;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
-__inference_sequential_2_layer_call_fn_142949aKLMN;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ@
p

 
ª "ÿÿÿÿÿÿÿÿÿ@¶
$__inference_signature_wrapper_141967CDEFGHIJOPKLMNQR4132AB<¢9
¢ 
2ª/
-
input_3"
input_3ÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_12"
dense_12ÿÿÿÿÿÿÿÿÿ