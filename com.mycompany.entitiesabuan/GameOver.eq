
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver : SEScene
{
	SESprite menu;
	SESprite text1;
	SESprite text2;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_sprite_for_color(Color.instance("black"), get_scene_width(), get_scene_height());
		var w = get_scene_width() , h = get_scene_height();
		rsc.prepare_font("myfont", "arial bold color=white",100);
		rsc.prepare_font("myfont2", "arial bold color=white",50);
		rsc.prepare_image("mybg","axe" , w,h);
		menu = add_sprite_for_image(SEImage.for_resource("mybg"));
		text1= add_sprite_for_text("GAME OVER", "myfont");
		text2 = add_sprite_for_text("click anywhere", "myfont2");
		menu.move(0,0);
		text1.move(get_scene_width()*0.5- text1.get_width()*0.5,get_scene_height()*0.7);
		text2.move(get_scene_width()*0.5- text2.get_width()*0.5,get_scene_height()*0.9);
	}

		public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if(pi.is_inside(0,0, get_scene_width(), get_scene_height())) {
			AudioClipManager.play("sound1");
			switch_scene(new MenuScene());		
		}
	}

	
	public void cleanup() {
		base.cleanup();
	}
}
