
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite monster;
	public static int mx;
	public static int my;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w= get_scene_width(), h= get_scene_height();
		rsc.prepare_image("mymonster","axe",  w*0.20, h*0.20);
		monster = add_sprite_for_image(SEImage.for_resource("mymonster"));
	//	monster.move(0,0);
		monster.move(Math.random(0,w), Math.random(0,h));
	}

	public void tick(TimeVal now, double delta) {
		mx = monster.get_x();
	    my = monster.get_y();
		var px = MainScene.px;
		var py = MainScene.py;
		monster.move( mx+(px-mx)/Math.random(20,100),my+(py-my)/Math.random(20,100) );
	}

	public void cleanup() {
		base.cleanup();
	}
}
