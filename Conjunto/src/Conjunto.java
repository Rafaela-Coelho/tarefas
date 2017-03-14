import java.io.Serializable;

public class Conjunto implements Serializable {
	private int id_conjunto;
	private int andar;

	public void setId_conjunto(int id_conjunto) {
		this.id_conjunto = id_conjunto;
	}

	public int getId_conjunto() {
		return id_conjunto;
	}

	public void setAndar(int andar) {
		this.andar = andar;
	}

	public int getAndar() {
		return andar;
	}

}