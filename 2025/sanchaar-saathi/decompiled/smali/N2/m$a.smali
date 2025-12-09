.class public LN2/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LN2/m;


# direct methods
.method public constructor <init>(LN2/m;)V
    .locals 0

    iput-object p1, p0, LN2/m$a;->a:LN2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "FlutterSurfaceView"

    const-string p2, "SurfaceHolder.Callback.surfaceChanged()"

    invoke-static {p1, p2}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LN2/m$a;->a:LN2/m;

    invoke-static {p1}, LN2/m;->f(LN2/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LN2/m$a;->a:LN2/m;

    invoke-static {p1, p3, p4}, LN2/m;->h(LN2/m;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FlutterSurfaceView"

    const-string v0, "SurfaceHolder.Callback.startRenderingToSurface()"

    invoke-static {p1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LN2/m$a;->a:LN2/m;

    const/4 v0, 0x1

    invoke-static {p1, v0}, LN2/m;->e(LN2/m;Z)Z

    iget-object p1, p0, LN2/m$a;->a:LN2/m;

    invoke-static {p1}, LN2/m;->f(LN2/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LN2/m$a;->a:LN2/m;

    invoke-static {p1}, LN2/m;->g(LN2/m;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FlutterSurfaceView"

    const-string v0, "SurfaceHolder.Callback.stopRenderingToSurface()"

    invoke-static {p1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LN2/m$a;->a:LN2/m;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LN2/m;->e(LN2/m;Z)Z

    iget-object p1, p0, LN2/m$a;->a:LN2/m;

    invoke-static {p1}, LN2/m;->f(LN2/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LN2/m$a;->a:LN2/m;

    invoke-static {p1}, LN2/m;->i(LN2/m;)V

    :cond_0
    return-void
.end method
