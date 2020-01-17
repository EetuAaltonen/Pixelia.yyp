var hudState = argument0;
// spr_controls_mouse

var yPos = 638;

switch (hudState) {
	case HudStates.Inventory: {
		if (global.hudAction == HudActions.Backpack) {
			return [
				[645, yPos, spr_controls_mouse_left, HudActionText[HudActions.UseEquip]],
				[840, yPos, spr_controls_mouse_right, HudActionText[HudActions.Drop]]
			];
		} else if (global.hudAction == HudActions.Equipment) {
			return [
				[645, yPos, spr_controls_mouse_left, HudActionText[HudActions.Equip]],
				[840, yPos, spr_controls_mouse_right, HudActionText[HudActions.Drop]]
			];
		}
	}break;
	default: {
		return [
			[645, yPos, spr_controls_mouse_left, HudActionText[global.hudAction]]
		];
	}
}