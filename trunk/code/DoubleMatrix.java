

import java.util.* ;
import java.io.* ;
import java.text.* ;

/** 
 A DoubleMatrix implements a matrix of doubles; only 2-dimensional and 3-dimensional versions are available 
 at the moment.  
 <p>
 NOTE:  When specifying the SIZE of a matrix, use 1-based measure.  When specifying the LOCATION of a cell,
 use 0-based addresses (analogous to arrays).

@author		Gary Morris, University of Pennsylvania		morris@seas.upenn.edu
 */
public class DoubleMatrix implements Serializable  {

private int dim1, dim2, dim3 = 0;
private double[] matrix;

    public DoubleMatrix()  {  }

    public DoubleMatrix(int rows, int cols)  {
        dim1 = rows;
        dim2 = cols;
        matrix = new double[(rows * cols)];
    }  //  end of 2-dimensional constructor

    public DoubleMatrix(int rows, int cols, int layers)  {
        dim1 = rows;
        dim2 = cols;
        dim3 = layers;
        matrix = new double[(rows * cols * layers)];
    }  //  end of 3-dimensional constructor
    
    public String toString()  {
        if (dim3 > 0) return toString3();
        else return toString2(99);
    }  //  end of over-riding toString method
    
    public String toGrid()  {
        if (dim3 > 0) return toGrid3(99);
        else return toString2(99);
    }  //  end of generic toGrid method
    
    
    public String toGrid(int limit)  {
        if (dim3 > 0) return toGrid3(limit);
        else return toString2(limit);
    }  //  end of generic toGrid method
    
    
    public String toGrid3(int limit)  {
        //  Print out a <dim3>-column grid of the matrix values -- e.g. for the 10 Kinship Features
        String answer = "", elm;
        for (int i=0; i < matrix.length; i++)  {
            elm = String.valueOf(matrix[i]);
			if (elm.length() > limit) elm = elm.substring(0, limit);
			answer += elm;
            if (i % dim3 == (dim3 - 1)) answer += "\n";
            else answer += "  \t";
        }  //  end of loop thru all cells
        return answer;
    }  //  end of test method toGrid
    
    
    String toString2(int limit)  {
        String output = "", elm;
        for (int i=0; i < dim1; i++)  {
			elm = String.valueOf(matrix[(i * dim2)]);
			if (elm.length() > limit) elm = elm.substring(0, limit);
			output += elm;
            for (int j=1; j < dim2; j++)  {
                elm = String.valueOf(matrix[(i * dim2) + j]);
				if (elm.length() > limit) elm = elm.substring(0, limit);
				output += "  \t" + elm;
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
    
    
    public void put(int row, int col, double value)  {
        matrix[(row * dim2) + col] = value;
    }  //  end of method put for 2 dimensions

    public void put(int row, int col, int layer, double value)  {
        matrix[(row * dim2 * dim3) + (col * dim3) + layer] = value;
    }  //  end of method put for 3 dimensions

    public double get(int row, int col)  {
        return matrix[(row * dim2) + col];
    }  //  end of 2-dimensional get method

    public double get(int row, int col, int layer)  {
        return matrix[(row * dim2 * dim3) + (col * dim3) + layer];
    }  //  end of 3-dimensional get method

	public double[] colWithMaxIn(int scoreRow)  {
		//  must be a 2-dimensional matrix, else a row & col would be needed.
		double[] answer = new double[dim1];
		double score, maxScore = -9999d;
		int where = 0;
		for (int col=0; col < dim2; col++)  {
			score = get(scoreRow, col);
			if (score > maxScore) { 
				maxScore = score;
				where = col;
				}
			}  //  end of loop thru each col
		for (int row=0; row < dim1; row++) 
			answer[row] = get(row, where);
		return answer;
		}  //  end of method colWithMax


}
