

import java.util.* ;
import java.io.* ;
import java.text.* ;

/** 
 A FloatMatrix implements a matrix of floats; only 2-dimensional and 3-dimensional versions are available 
 at the moment.  
 <p>
 NOTE:  When specifying the SIZE of a matrix, use 1-based measure.  When specifying the LOCATION of a cell,
 use 0-based addresses (analogous to arrays).

@author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */
public class FloatMatrix implements Serializable  {

private int dim1, dim2, dim3 = 0;
private float[] matrix;

	public FloatMatrix()  {  }

    public FloatMatrix(int rows, int cols)  {
        dim1 = rows;
        dim2 = cols;
        matrix = new float[(rows * cols)];
    }  //  end of 2-dimensional constructor

    public FloatMatrix(int rows, int cols, int layers)  {
        dim1 = rows;
        dim2 = cols;
        dim3 = layers;
        matrix = new float[(rows * cols * layers)];
    }  //  end of 3-dimensional constructor
    
    public String toString()  {
        if (dim3 > 0) return toString3();
        else return toString2();
    }  //  end of over-riding toString method
    
	public void initialize(float val)  {
		int end = dim1 * dim2;
		if (dim3 > 0) end *= dim3;
		for (int i=0; i < end; i++) matrix[i] = val;
		}  //  end of method initialize
	
    
    public String toGrid()  {
        //  Print out an <dim3>-column grid of the matrix values -- e.g. for the 10 Kinship Features
        if (dim3 == 0) return toString2();
		String answer = "";
        for (int i=0; i < matrix.length; i++)  {
            answer += matrix[i];
            if (i % dim3 == (dim3 - 1)) answer += "\n";
            else answer += "\t";
        }  //  end of loop thru all cells
        return answer;
    }  //  end of test method toGrid
    
    
    String toString2()  {
        String output = "";
        for (int i=0; i < dim1; i++)  {
            output += matrix[(i * dim2)];
            for (int j=1; j < dim2; j++)  {
                output += "\t" + matrix[(i * dim2) + j];
            }  //  end of inner loop   
            output += "\n";
        }  //  end of outer loop
        return output;
    }  //  end of method for outputting 2-dimensional matrix
    
    
    String toString3()  {
        String output = "";
        for (int i=0; i < dim1; i++)  {
            output += "(" + matrix[(i * dim2 * dim3)];
            for (int k=1; k < dim3; k++)
                output += ", " + matrix[(i * dim2 * dim3) + k];
            output += ")";
            for (int j=1; j < dim2; j++)  {
                output += "\t(" + matrix[(i * dim2 * dim3) + (j * dim3)];
                for (int k=1; k < dim3; k++)
                    output += ", " + matrix[(i * dim2 * dim3) + (j * dim3) + k];
                output += ")";
            }  //  end of middle (j) loop   
            output += "\n";
        }  //  end of outer (i) loop
        return output;
    }  //  end of method for outputting 3-dimensional matrix
    
    
    public void put(int row, int col, float value)  {
        matrix[(row * dim2) + col] = value;
    }  //  end of method put for 2 dimensions

    public void put(int row, int col, int layer, float value)  {
        matrix[(row * dim2 * dim3) + (col * dim3) + layer] = value;
    }  //  end of method put for 3 dimensions

    public float get(int row, int col)  {
        return matrix[(row * dim2) + col];
    }  //  end of 2-dimensional get method

    public float get(int row, int col, int layer)  {
        return matrix[(row * dim2 * dim3) + (col * dim3) + layer];
    }  //  end of 3-dimensional get method

	public void add(int row, int col, float value)  {
        matrix[(row * dim2) + col] += value;
    }  //  end of method add for 2 dimensions

    public void add(int row, int col, int layer, float value)  {
        matrix[(row * dim2 * dim3) + (col * dim3) + layer] += value;
    }  //  end of method add for 3 dimensions


}
