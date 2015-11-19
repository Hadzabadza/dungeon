// Player.pde : player state, input, actions

int INVENTORY_SIZE = 8;

class Player extends Dynamic {
    int health;
    int damage;
    Item inventory[];

    Player(int x, int y, int health, int damage) {
        super(x, y);
        this.health = health;
        this.damage = damage;
        this.inventory = new Item[INVENTORY_SIZE];
    }

    void takeTurn(actions action, Grid g) {
        this.input(action, g);
        println("Player did something!");
    }

    // take and act on player input for movement
    void input(actions action, Grid g) {
        switch (action) {
            case MOVE_UP: {
                this.move(this.x, this.y - 1, g);
            } break;
            case MOVE_DOWN: {
                this.move(this.x, this.y + 1, g);
            } break;
            case MOVE_LEFT: {
                this.move(this.x - 1, this.y, g);
            } break;
            case MOVE_RIGHT: {
                this.move(this.x + 1, this.y, g);
            } break;
            case INTERACT: {
                // DEBUG:
                println("Interacting!");
            } break;
        }
    }

    void takeItem(Item i) {
        // TODO: dynamic inventory management
        this.inventory[0] = i;
    }

    void draw(int x, int y, int size) {
        fill(255, 204, 102);
        ellipse(x, y, size, size);
    }
}
