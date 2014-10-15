
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite monster;
	public static int mx;
	public static int my;
    int  px1;
    int  py1;
    int speed;
	public static bool truth;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		truth=false;
		var w= get_scene_width(), h= get_scene_height();
		rsc.prepare_image("mymonster","axe",  w*0.20, h*0.20);
		rsc.prepare_image("game1","gameover",get_scene_width(),get_scene_height());
		monster = add_sprite_for_image(SEImage.for_resource("mymonster"));
	//	monster.move(0,0);
		 px1 = Math.random(0,w);
         py1 = Math.random(0,h);
		monster.move(px1,py1);
		speed = Math.random(4,15);
	}

	public void tick(TimeVal now, double delta) {
   	 if(px1 < MainScene.px){
                        px1 = px1 + Math.random(speed/-4,speed);
                }
                else if(px1 > MainScene.px){
                        px1 = px1 - Math.random(speed/-4,speed);
                }
                
                if(py1 < MainScene.py){
                        py1 = py1 + Math.random(speed/-4,speed);
                        }
                else if(py1 > MainScene.py){
                        py1 = py1 - Math.random(speed/-4,speed);
                }

                if(px1==MainScene.px&&py1==MainScene.py) {
            	MainScene.road = add_sprite_for_image(SEImage.for_resource("game1"));
                MainScene.road.move(0,0);
                truth = true;
                }
               monster.move(px1,py1);
			

	//	monster.move( mx+(px-mx)/Math.random(20,100),my+(py-my)/Math.random(20,100) );
	}

	public void cleanup() {
		base.cleanup();
	}
}
