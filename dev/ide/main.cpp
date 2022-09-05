#include "main.h"


THelloApp::THelloApp():TProgInit( &THelloApp::initStatusLine,
	&THelloApp::initMenuBar,
	&THelloApp::initDeskTop
)
{
}

/*
TMenuBar * THelloApp::initMenuBar(TRect r)
{
	return 0; 
}

TStatusLine * THelloApp::initStatusLine(TRect r)
{
	return 0;
}
*/
void THelloApp::handleEvent(TEvent &event)
{
	//TApplication::handleEvent(event);
}

void THelloApp::greetingBox()
{
}

int main()
{
	THelloApp app;
	app.run();

	return 0;
}
