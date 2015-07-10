modifier_mirana_arrow_lua = class({})
--------------------------------------------------------------------------------

function modifier_mirana_arrow_lua:IsDebuff()
	return true
end

--------------------------------------------------------------------------------

function modifier_mirana_arrow_lua:IsStunDebuff()
	return true
end

--------------------------------------------------------------------------------

function modifier_mirana_arrow_lua:GetEffectName()
	return "particles/generic_gameplay/generic_stunned.vpcf"
end

--------------------------------------------------------------------------------

function modifier_mirana_arrow_lua:GetTexture()
	return "mirana_arrow"
end

--------------------------------------------------------------------------------

function modifier_mirana_arrow_lua:GetEffectAttachType()
	return PATTACH_OVERHEAD_FOLLOW
end

--------------------------------------------------------------------------------

function modifier_mirana_arrow_lua:DeclareFunctions()
	local funcs = {
		MODIFIER_PROPERTY_OVERRIDE_ANIMATION,
	}

	return funcs
end

--------------------------------------------------------------------------------

function modifier_mirana_arrow_lua:GetOverrideAnimation( params )
	return ACT_DOTA_DISABLED
end

--------------------------------------------------------------------------------

function modifier_mirana_arrow_lua:CheckState()
	local state = {
	[MODIFIER_STATE_STUNNED] = true,
	}

	return state
end

--------------------------------------------------------------------------------
