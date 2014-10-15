
/*
 * MenuScene
 * Created by Eqela Studio 2.0b7.4
 */

public class MenuScene : SEScene
{
	SESprite menu;
	SESprite text1;
	
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		AudioClipManager.prepare("sound1");
		var w = get_scene_width() , h = get_scene_height();
		rsc.prepare_font("myfont", "arial bold color=red",80);
		rsc.prepare_image("mybg","axebg" , w,h);
		menu = add_sprite_for_image(SEImage.for_resource("mybg"));
		text1= add_sprite_for_text("PLAY!", "myfont");
		menu.move(0,0);
		text1.move(text1.get_width()*0.9,get_scene_height()*0.8);
	}

	
	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
	    if(pi.is_inside(text1.get_width()*0.9,get_scene_height()*0.8-text1.get_height()*0.5,text1.get_width()*0.9+text1.get_width(),get_scene_height()*0.8+text1.get_height())) {
			AudioClipManager.play("sound1");
			switch_scene(new MainScene());
	
			
		}
		}

	public void cleanup() {
		base.cleanup();
	}
}
