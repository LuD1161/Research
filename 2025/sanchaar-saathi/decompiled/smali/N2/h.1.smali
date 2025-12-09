.class public LN2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN2/h$c;
    }
.end annotation


# instance fields
.field public a:LN2/h$c;

.field public b:Lio/flutter/embedding/engine/a;

.field public c:LN2/u;

.field public d:Lio/flutter/plugin/platform/f;

.field public e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/Integer;

.field public k:Lio/flutter/embedding/engine/b;

.field public final l:Lio/flutter/embedding/engine/renderer/m;


# direct methods
.method public constructor <init>(LN2/h$c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LN2/h;-><init>(LN2/h$c;Lio/flutter/embedding/engine/b;)V

    return-void
.end method

.method public constructor <init>(LN2/h$c;Lio/flutter/embedding/engine/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, LN2/h$a;

    invoke-direct {v0, p0}, LN2/h$a;-><init>(LN2/h;)V

    iput-object v0, p0, LN2/h;->l:Lio/flutter/embedding/engine/renderer/m;

    .line 4
    iput-object p1, p0, LN2/h;->a:LN2/h$c;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, LN2/h;->h:Z

    .line 6
    iput-object p2, p0, LN2/h;->k:Lio/flutter/embedding/engine/b;

    return-void
.end method

.method public static synthetic a(LN2/h;)LN2/h$c;
    .locals 0

    iget-object p0, p0, LN2/h;->a:LN2/h$c;

    return-object p0
.end method

.method public static synthetic b(LN2/h;)Z
    .locals 0

    iget-boolean p0, p0, LN2/h;->g:Z

    return p0
.end method

.method public static synthetic c(LN2/h;Z)Z
    .locals 0

    iput-boolean p1, p0, LN2/h;->g:Z

    return p1
.end method

.method public static synthetic d(LN2/h;Z)Z
    .locals 0

    iput-boolean p1, p0, LN2/h;->h:Z

    return p1
.end method


# virtual methods
.method public A(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onRestoreInstanceState. Giving framework and plugins an opportunity to restore state."

    invoke-static {v0, v1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/h;->l()V

    if-eqz p1, :cond_0

    const-string v0, "plugins"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "framework"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p1, v0

    :goto_0
    iget-object v1, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v1}, LN2/h$c;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->u()LX2/s;

    move-result-object v1

    invoke-virtual {v1, p1}, LX2/s;->j([B)V

    :cond_1
    iget-object p1, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {p1}, LN2/h$c;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->i()LU2/b;

    move-result-object p1

    invoke-interface {p1, v0}, LU2/b;->d(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public B()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()LX2/k;

    move-result-object v0

    invoke-virtual {v0}, LX2/k;->e()V

    :cond_0
    return-void
.end method

.method public C(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onSaveInstanceState. Giving framework and plugins an opportunity to save state."

    invoke-static {v0, v1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->u()LX2/s;

    move-result-object v0

    invoke-virtual {v0}, LX2/s;->h()[B

    move-result-object v0

    const-string v1, "framework"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->i()LU2/b;

    move-result-object v1

    invoke-interface {v1, v0}, LU2/b;->f(Landroid/os/Bundle;)V

    const-string v1, "plugins"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->o()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->E()Z

    move-result v0

    const-string v1, "enableOnBackInvokedCallbackState"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public D()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/h;->l()V

    invoke-virtual {p0}, LN2/h;->k()V

    iget-object v0, p0, LN2/h;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, LN2/h;->c:LN2/u;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, LN2/u;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()LX2/k;

    move-result-object v0

    invoke-virtual {v0}, LX2/k;->d()V

    :cond_0
    iget-object v0, p0, LN2/h;->c:LN2/u;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LN2/h;->j:Ljava/lang/Integer;

    iget-object v0, p0, LN2/h;->c:LN2/u;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, LN2/u;->setVisibility(I)V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->o(I)V

    :cond_1
    return-void
.end method

.method public F(I)V
    .locals 2

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, LN2/h;->h:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    if-lt p1, v1, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()LP2/a;

    move-result-object v0

    invoke-virtual {v0}, LP2/a;->n()V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->y()LX2/w;

    move-result-object v0

    invoke-virtual {v0}, LX2/w;->a()V

    :cond_0
    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->o(I)V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Lio/flutter/plugin/platform/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/t;->o0(I)V

    :cond_1
    return-void
.end method

.method public G()V
    .locals 2

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onUserLeaveHint() to FlutterEngine."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()LU2/b;

    move-result-object v0

    invoke-interface {v0}, LU2/b;->g()V

    goto :goto_0

    :cond_0
    const-string v0, "onUserLeaveHint() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public H(Z)V
    .locals 2

    invoke-virtual {p0}, LN2/h;->l()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received onWindowFocusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()LX2/k;

    move-result-object p1

    invoke-virtual {p1}, LX2/k;->a()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()LX2/k;

    move-result-object p1

    invoke-virtual {p1}, LX2/k;->f()V

    :cond_2
    :goto_1
    return-void
.end method

.method public I()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LN2/h;->a:LN2/h$c;

    iput-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    iput-object v0, p0, LN2/h;->c:LN2/u;

    iput-object v0, p0, LN2/h;->d:Lio/flutter/plugin/platform/f;

    return-void
.end method

.method public J()V
    .locals 5

    const-string v0, "Setting up FlutterEngine."

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->q()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\'"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, LO2/a;->b()LO2/a;

    move-result-object v1

    invoke-virtual {v1, v0}, LO2/a;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/a;

    move-result-object v1

    iput-object v1, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    iput-boolean v3, p0, LN2/h;->f:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested cached FlutterEngine did not exist in the FlutterEngineCache: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4}, LN2/h$c;->C(Landroid/content/Context;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    iput-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_2

    iput-boolean v3, p0, LN2/h;->f:Z

    return-void

    :cond_2
    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, LO2/c;->b()LO2/c;

    move-result-object v1

    invoke-virtual {v1, v0}, LO2/c;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/b;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lio/flutter/embedding/engine/b$b;

    iget-object v2, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v2}, LN2/h$c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/flutter/embedding/engine/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, LN2/h;->e(Lio/flutter/embedding/engine/b$b;)Lio/flutter/embedding/engine/b$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/b;->a(Lio/flutter/embedding/engine/b$b;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    iput-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    iput-boolean v3, p0, LN2/h;->f:Z

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested cached FlutterEngineGroup did not exist in the FlutterEngineGroupCache: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this FlutterFragment."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->k:Lio/flutter/embedding/engine/b;

    if-nez v0, :cond_5

    new-instance v0, Lio/flutter/embedding/engine/b;

    iget-object v1, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v1}, LN2/h$c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v2}, LN2/h$c;->z()LO2/e;

    move-result-object v2

    invoke-virtual {v2}, LO2/e;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/b;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lio/flutter/embedding/engine/b$b;

    iget-object v2, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v2}, LN2/h$c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lio/flutter/embedding/engine/b$b;->h(Z)Lio/flutter/embedding/engine/b$b;

    move-result-object v1

    iget-object v2, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v2}, LN2/h$c;->r()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/b$b;->l(Z)Lio/flutter/embedding/engine/b$b;

    move-result-object v1

    invoke-virtual {p0, v1}, LN2/h;->e(Lio/flutter/embedding/engine/b$b;)Lio/flutter/embedding/engine/b$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/b;->a(Lio/flutter/embedding/engine/b$b;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    iput-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    iput-boolean v3, p0, LN2/h;->f:Z

    return-void
.end method

.method public K(Landroid/window/BackEvent;)V
    .locals 2

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding startBackGesture() to FlutterEngine."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()LX2/f;

    move-result-object v0

    invoke-virtual {v0, p1}, LX2/f;->d(Landroid/window/BackEvent;)V

    goto :goto_0

    :cond_0
    const-string p1, "Invoked startBackGesture() before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public L(Landroid/window/BackEvent;)V
    .locals 2

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding updateBackGestureProgress() to FlutterEngine."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()LX2/f;

    move-result-object v0

    invoke-virtual {v0, p1}, LX2/f;->e(Landroid/window/BackEvent;)V

    goto :goto_0

    :cond_0
    const-string p1, "Invoked updateBackGestureProgress() before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public M()V
    .locals 1

    iget-object v0, p0, LN2/h;->d:Lio/flutter/plugin/platform/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/f;->E()V

    :cond_0
    return-void
.end method

.method public final e(Lio/flutter/embedding/engine/b$b;)Lio/flutter/embedding/engine/b$b;
    .locals 3

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, LM2/a;->e()LM2/a;

    move-result-object v0

    invoke-virtual {v0}, LM2/a;->c()LR2/d;

    move-result-object v0

    invoke-virtual {v0}, LR2/d;->g()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, LP2/a$c;

    iget-object v2, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v2}, LN2/h$c;->s()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, LP2/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, LN2/h;->q(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "/"

    :cond_2
    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/b$b;->i(LP2/a$c;)Lio/flutter/embedding/engine/b$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/b$b;->k(Ljava/lang/String;)Lio/flutter/embedding/engine/b$b;

    move-result-object p1

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/b$b;->j(Ljava/util/List;)Lio/flutter/embedding/engine/b$b;

    move-result-object p1

    return-object p1
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->f()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The internal FlutterEngine created by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LN2/h;->a:LN2/h$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been attached to by another activity. To persist a FlutterEngine beyond the ownership of this activity, explicitly create a FlutterEngine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic g()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LN2/h;->m()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding cancelBackGesture() to FlutterEngine."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()LX2/f;

    move-result-object v0

    invoke-virtual {v0}, LX2/f;->b()V

    goto :goto_0

    :cond_0
    const-string v0, "Invoked cancelBackGesture() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding commitBackGesture() to FlutterEngine."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()LX2/f;

    move-result-object v0

    invoke-virtual {v0}, LX2/f;->c()V

    goto :goto_0

    :cond_0
    const-string v0, "Invoked commitBackGesture() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final j(LN2/u;)V
    .locals 2

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->A()LN2/H;

    move-result-object v0

    sget-object v1, LN2/H;->e:LN2/H;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LN2/h;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, LN2/h;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    new-instance v0, LN2/h$b;

    invoke-direct {v0, p0, p1}, LN2/h$b;-><init>(LN2/h;LN2/u;)V

    iput-object v0, p0, LN2/h;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, LN2/h;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot delay the first Android view draw when the render mode is not set to `RenderMode.surface`."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()LP2/a;

    move-result-object v0

    invoke-virtual {v0}, LP2/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, LN2/h;->q(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "/"

    :cond_2
    iget-object v1, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v1}, LN2/h$c;->u()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing Dart entrypoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v3}, LN2/h$c;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", library uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "\"\""

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", and sending initial route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "FlutterActivityAndFragmentDelegate"

    invoke-static {v3, v2}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/a;->o()LX2/n;

    move-result-object v2

    invoke-virtual {v2, v0}, LX2/n;->c(Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {}, LM2/a;->e()LM2/a;

    move-result-object v0

    invoke-virtual {v0}, LM2/a;->c()LR2/d;

    move-result-object v0

    invoke-virtual {v0}, LR2/d;->g()Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v1, :cond_6

    new-instance v1, LP2/a$c;

    iget-object v2, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v2}, LN2/h$c;->s()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, LP2/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v2, LP2/a$c;

    iget-object v3, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v3}, LN2/h$c;->s()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, LP2/a$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()LP2/a;

    move-result-object v0

    iget-object v2, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v2}, LN2/h$c;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LP2/a;->k(LP2/a$c;Ljava/util/List;)V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->e()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlutterActivityAndFragmentDelegate\'s getAppComponent should only be queried after onAttach, when the host\'s activity should always be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public n()Lio/flutter/embedding/engine/a;
    .locals 1

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, LN2/h;->i:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, LN2/h;->f:Z

    return v0
.end method

.method public final q(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(IILandroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onActivityResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nresultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ndata: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()LU2/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LU2/b;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    const-string p1, "onActivityResult() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public s(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object p1, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    if-nez p1, :cond_0

    invoke-virtual {p0}, LN2/h;->J()V

    :cond_0
    iget-object p1, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {p1}, LN2/h$c;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "FlutterActivityAndFragmentDelegate"

    const-string v0, "Attaching FlutterEngine to the Activity that owns this delegate."

    invoke-static {p1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->i()LU2/b;

    move-result-object p1

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->b()Landroidx/lifecycle/g;

    move-result-object v0

    invoke-interface {p1, p0, v0}, LU2/b;->c(LN2/b;Landroidx/lifecycle/g;)V

    :cond_1
    iget-object p1, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {p1}, LN2/h$c;->e()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {p1, v0, v1}, LN2/h$c;->v(Landroid/app/Activity;Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/f;

    move-result-object p1

    iput-object p1, p0, LN2/h;->d:Lio/flutter/plugin/platform/f;

    iget-object p1, p0, LN2/h;->a:LN2/h$c;

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {p1, v0}, LN2/h$c;->G(Lio/flutter/embedding/engine/a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LN2/h;->i:Z

    return-void
.end method

.method public t()V
    .locals 2

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onBackPressed() to FlutterEngine."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->o()LX2/n;

    move-result-object v0

    invoke-virtual {v0}, LX2/n;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "Invoked onBackPressed() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public u(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;
    .locals 4

    const-string p1, "Creating FlutterView."

    const-string p2, "FlutterActivityAndFragmentDelegate"

    invoke-static {p2, p1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object p1, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {p1}, LN2/h$c;->A()LN2/H;

    move-result-object p1

    sget-object p3, LN2/H;->e:LN2/H;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p3, :cond_1

    new-instance p1, LN2/m;

    iget-object p3, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {p3}, LN2/h$c;->a()Landroid/content/Context;

    move-result-object p3

    iget-object v2, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v2}, LN2/h$c;->F()LN2/I;

    move-result-object v2

    sget-object v3, LN2/I;->f:LN2/I;

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p1, p3, v0}, LN2/m;-><init>(Landroid/content/Context;Z)V

    iget-object p3, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {p3, p1}, LN2/h$c;->y(LN2/m;)V

    new-instance p3, LN2/u;

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p1}, LN2/u;-><init>(Landroid/content/Context;LN2/m;)V

    iput-object p3, p0, LN2/h;->c:LN2/u;

    goto :goto_0

    :cond_1
    new-instance p1, LN2/n;

    iget-object p3, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {p3}, LN2/h$c;->a()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, LN2/n;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {p3}, LN2/h$c;->F()LN2/I;

    move-result-object p3

    sget-object v2, LN2/I;->e:LN2/I;

    if-ne p3, v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object p3, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {p3, p1}, LN2/h$c;->D(LN2/n;)V

    new-instance p3, LN2/u;

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p1}, LN2/u;-><init>(Landroid/content/Context;LN2/n;)V

    iput-object p3, p0, LN2/h;->c:LN2/u;

    :goto_0
    iget-object p1, p0, LN2/h;->c:LN2/u;

    iget-object p3, p0, LN2/h;->l:Lio/flutter/embedding/engine/renderer/m;

    invoke-virtual {p1, p3}, LN2/u;->l(Lio/flutter/embedding/engine/renderer/m;)V

    iget-object p1, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {p1}, LN2/h$c;->B()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Attaching FlutterEngine to FlutterView."

    invoke-static {p2, p1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LN2/h;->c:LN2/u;

    iget-object p2, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1, p2}, LN2/u;->n(Lio/flutter/embedding/engine/a;)V

    :cond_3
    iget-object p1, p0, LN2/h;->c:LN2/u;

    invoke-virtual {p1, p4}, Landroid/view/View;->setId(I)V

    if-eqz p5, :cond_4

    iget-object p1, p0, LN2/h;->c:LN2/u;

    invoke-virtual {p0, p1}, LN2/h;->j(LN2/u;)V

    :cond_4
    iget-object p1, p0, LN2/h;->c:LN2/u;

    return-object p1
.end method

.method public v()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, LN2/h;->c:LN2/u;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, LN2/h;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, LN2/h;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    iget-object v0, p0, LN2/h;->c:LN2/u;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LN2/u;->s()V

    iget-object v0, p0, LN2/h;->c:LN2/u;

    iget-object v1, p0, LN2/h;->l:Lio/flutter/embedding/engine/renderer/m;

    invoke-virtual {v0, v1}, LN2/u;->y(Lio/flutter/embedding/engine/renderer/m;)V

    :cond_1
    return-void
.end method

.method public w()V
    .locals 3

    iget-boolean v0, p0, LN2/h;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onDetach()"

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    iget-object v2, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {v0, v2}, LN2/h$c;->t(Lio/flutter/embedding/engine/a;)V

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Detaching FlutterEngine from the Activity that owns this Fragment."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()LU2/b;

    move-result-object v0

    invoke-interface {v0}, LU2/b;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()LU2/b;

    move-result-object v0

    invoke-interface {v0}, LU2/b;->e()V

    :cond_2
    :goto_0
    iget-object v0, p0, LN2/h;->d:Lio/flutter/plugin/platform/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/flutter/plugin/platform/f;->q()V

    iput-object v1, p0, LN2/h;->d:Lio/flutter/plugin/platform/f;

    :cond_3
    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()LX2/k;

    move-result-object v0

    invoke-virtual {v0}, LX2/k;->b()V

    :cond_4
    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->g()V

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, LO2/a;->b()LO2/a;

    move-result-object v0

    iget-object v2, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v2}, LN2/h$c;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LO2/a;->d(Ljava/lang/String;)V

    :cond_5
    iput-object v1, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, LN2/h;->i:Z

    return-void
.end method

.method public x(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onNewIntent() to FlutterEngine and sending pushRouteInformation message."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()LU2/b;

    move-result-object v0

    invoke-interface {v0, p1}, LU2/b;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, LN2/h;->q(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->o()LX2/n;

    move-result-object v0

    invoke-virtual {v0, p1}, LX2/n;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "onNewIntent() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public y()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->a:LN2/h$c;

    invoke-interface {v0}, LN2/h$c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()LX2/k;

    move-result-object v0

    invoke-virtual {v0}, LX2/k;->c()V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    const-string v0, "onPostResume()"

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN2/h;->l()V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LN2/h;->M()V

    iget-object v0, p0, LN2/h;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Lio/flutter/plugin/platform/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/t;->n0()V

    goto :goto_0

    :cond_0
    const-string v0, "onPostResume() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
