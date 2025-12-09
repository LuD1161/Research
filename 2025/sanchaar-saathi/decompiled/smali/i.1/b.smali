.class public abstract Li/b;
.super Li0/u;
.source "SourceFile"

# interfaces
.implements Li/c;
.implements LG/u$a;


# instance fields
.field public B:Li/d;

.field public C:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li0/u;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Li/d;->d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/d;->f(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Li/b;->e0()Li/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public d0()Li/d;
    .locals 1

    iget-object v0, p0, Li/b;->B:Li/d;

    if-nez v0, :cond_0

    invoke-static {p0, p0}, Li/d;->g(Landroid/app/Activity;Li/c;)Li/d;

    move-result-object v0

    iput-object v0, p0, Li/b;->B:Li/d;

    :cond_0
    iget-object v0, p0, Li/b;->B:Li/d;

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Li/b;->e0()Li/a;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Li/a;->p(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, LG/e;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public e0()Li/a;
    .locals 1

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0}, Li/d;->m()Li/a;

    move-result-object v0

    return-object v0
.end method

.method public f0(LG/u;)V
    .locals 0

    invoke-virtual {p1, p0}, LG/u;->t(Landroid/app/Activity;)LG/u;

    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/d;->i(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public g0(I)V
    .locals 0

    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0}, Li/d;->l()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    iget-object v0, p0, Li/b;->C:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Lp/h0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lp/h0;

    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lp/h0;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Li/b;->C:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Li/b;->C:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public h0(LG/u;)V
    .locals 0

    return-void
.end method

.method public i0()V
    .locals 0

    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0}, Li/d;->o()V

    return-void
.end method

.method public j(Ln/b;)V
    .locals 0

    return-void
.end method

.method public j0()Z
    .locals 2

    invoke-virtual {p0}, Li/b;->q()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Li/b;->m0(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, LG/u;->v(Landroid/content/Context;)LG/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/b;->f0(LG/u;)V

    invoke-virtual {p0, v0}, Li/b;->h0(LG/u;)V

    invoke-virtual {v0}, LG/u;->w()V

    :try_start_0
    invoke-static {p0}, LG/a;->n(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Li/b;->l0(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final k0(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public l0(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, LG/g;->e(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public m0(Landroid/content/Intent;)Z
    .locals 0

    invoke-static {p0, p1}, LG/g;->f(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public n(Ln/b$a;)Ln/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Ld/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Li/b;->C:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Li/b;->C:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/d;->p(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    invoke-virtual {p0}, Li/b;->i0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0}, Li/d;->n()V

    invoke-virtual {v0, p1}, Li/d;->q(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Li0/u;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Li0/u;->onDestroy()V

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0}, Li/d;->r()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p2}, Li/b;->k0(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Li0/u;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Li/b;->e0()Li/a;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Li/a;->j()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Li/b;->j0()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ld/h;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/d;->s(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    invoke-super {p0}, Li0/u;->onPostResume()V

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0}, Li/d;->t()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Ld/h;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/d;->u(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Li0/u;->onStart()V

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0}, Li/d;->v()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Li0/u;->onStop()V

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0}, Li/d;->w()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Li/d;->E(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Li/b;->e0()Li/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/a;->q()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public q()Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, LG/g;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/d;->A(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/d;->B(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Li/d;->C(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {p0}, Li/b;->d0()Li/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/d;->D(I)V

    return-void
.end method

.method public v(Ln/b;)V
    .locals 0

    return-void
.end method
