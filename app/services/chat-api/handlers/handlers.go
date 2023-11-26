package handlers

import (
	"net/http"
	"os"

	testgrp "github.com/MinaMamdouh2/Chat-Application-Backend/app/services/chat-api/handlers/v1/tstgrp"
	"github.com/MinaMamdouh2/Chat-Application-Backend/buisness/web/v1/mid"
	"github.com/MinaMamdouh2/Chat-Application-Backend/foundation/web"
	"go.uber.org/zap"
)

// APIMuxConfig contains all the mandatory systems required by handlers.
type APIMuxConfig struct {
	Shutdown chan os.Signal
	Log      *zap.SugaredLogger
}

// APIMux constructs a http.Handler with all application routes defined.
func APIMux(cfg APIMuxConfig) *web.App {
	app := web.NewApp(cfg.Shutdown, mid.Logger(cfg.Log), mid.Errors(cfg.Log), mid.Metrics(), mid.Panics())

	app.Handle(http.MethodGet, "/test", testgrp.Test)
	app.Handle(http.MethodGet, "/test/auth", testgrp.Test)
	return app
}
