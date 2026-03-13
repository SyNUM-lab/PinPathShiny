# <b>Adding columns to data<a name="columns"></a></b>
After you have uploaded your data, you can add columns to your data using the <code>+</code> button in the <code>Data info</code> page. 
You can add a column that <i>discetizes</i> or <i>transforms</i> an existing variable in the data.
<br>
<br>

### <b>Discretization</b>
The rule system for discretizing a contiuous variable (e.g., p-value or logFCs) consist of the following structure:
```
Label 1: rule that defines label 1
Label 2: rule that defines label 2
...
Label n: rule that defines label n
```
For instance, you can add a column to the data that indicates whether a gene is significantly differentially expressed: 

```
Yes: `p-value` < 0.05
No: `p-value` >= 0.05
```

Here is another example to make an extra column that indicates whether a gene is significantly up- or downregulated:
```
Up: (`Significant` == "Yes") & (`log2FC` > 0)
Down: (`Significant` == "Yes") & (`log2FC` < 0)
Unchanged: `Significant` == "No"
```
Note in these examples that the column name is put in-between backticks (e.g., `` ` ``column name`` ` ``). 
<br>
<br>

### <b>Transformation</b>
You can also transform a continuous variable. For instance, perform log<sub>10</sub>-transformation on the p-value:

```
log10(`p-value`)
```
Moreover, you can convert the log<sub>2</sub>FC to the fold change:

```
2^`log2FC`
```