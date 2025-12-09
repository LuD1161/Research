.class public LN2/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LN2/n;


# direct methods
.method public constructor <init>(LN2/n;)V
    .locals 0

    iput-object p1, p0, LN2/n$a;->a:LN2/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p1, "FlutterTextureView"

    const-string p2, "SurfaceTextureListener.onSurfaceTextureAvailable()"

    invoke-static {p1, p2}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LN2/n$a;->a:LN2/n;

    const/4 p2, 0x1

    invoke-static {p1, p2}, LN2/n;->e(LN2/n;Z)Z

    iget-object p1, p0, LN2/n$a;->a:LN2/n;

    invoke-static {p1}, LN2/n;->f(LN2/n;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LN2/n$a;->a:LN2/n;

    invoke-static {p1}, LN2/n;->g(LN2/n;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "FlutterTextureView"

    const-string v0, "SurfaceTextureListener.onSurfaceTextureDestroyed()"

    invoke-static {p1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LN2/n$a;->a:LN2/n;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LN2/n;->e(LN2/n;Z)Z

    iget-object p1, p0, LN2/n$a;->a:LN2/n;

    invoke-static {p1}, LN2/n;->f(LN2/n;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LN2/n$a;->a:LN2/n;

    invoke-static {p1}, LN2/n;->i(LN2/n;)V

    :cond_0
    iget-object p1, p0, LN2/n$a;->a:LN2/n;

    invoke-static {p1}, LN2/n;->j(LN2/n;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LN2/n$a;->a:LN2/n;

    invoke-static {p1}, LN2/n;->j(LN2/n;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    iget-object p1, p0, LN2/n$a;->a:LN2/n;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LN2/n;->k(LN2/n;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string p1, "FlutterTextureView"

    const-string v0, "SurfaceTextureListener.onSurfaceTextureSizeChanged()"

    invoke-static {p1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LN2/n$a;->a:LN2/n;

    invoke-static {p1}, LN2/n;->f(LN2/n;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LN2/n$a;->a:LN2/n;

    invoke-static {p1, p2, p3}, LN2/n;->h(LN2/n;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
