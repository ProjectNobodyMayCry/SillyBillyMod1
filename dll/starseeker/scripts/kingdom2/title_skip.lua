mod = {
  name = "title_skip",
  version = "1.0.0",
  permissions = { "pattern_scan", "memory_patch" }
}

function mod.on_bind(ctx)
  if not (ctx.config.get("Starseeker.kingdom2.title_skip", false) or ctx.config.get("Kingdom2.Patches.title_skip", false)) then
    return
  end

  local control = assert(ctx.scan.find({
    name = "title_skip_control",
    module = "game",
    pattern = "48 89 5C 24 ? 48 89 74 24 ? 57 48 83 EC ? 48 8B F1 33 C9 E8 ? ? ? ? 33 C9",
    required = true
  }))

  assert(ctx.patch.bytes({
    name = "title_skip_lay_bg",
    address = control + 0x192,
    replace = "76 6A 8B 47 08 48 A9 04 04 00 00 72"
  }))

  ctx.log.info("title skip patch applied")
end

function mod.on_shutdown(ctx)
  if ctx.config.get("Starseeker.kingdom2.title_skip", false) or ctx.config.get("Kingdom2.Patches.title_skip", false) then
    ctx.patch.restore("title_skip_lay_bg")
  end
end
