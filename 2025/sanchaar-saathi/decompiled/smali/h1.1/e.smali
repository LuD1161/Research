.class public Lh1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/platform/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh1/e$c;
    }
.end annotation


# static fields
.field public static m:I = 0x190

.field public static n:I = 0xc8


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroid/view/SurfaceView;

.field public final d:Lh1/e$c;

.field public final e:Landroid/widget/ImageView;

.field public final f:LY2/j;

.field public g:LS1/a;

.field public h:LT1/b;

.field public i:Z

.field public j:Z

.field public final k:Landroid/os/Handler;

.field public l:Lh1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LY2/b;ILjava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh1/e;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh1/e;->j:Z

    iput-object p1, p0, Lh1/e;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lh1/e;->k:Landroid/os/Handler;

    check-cast p4, Ljava/util/Map;

    invoke-static {p4}, Lh1/f;->a(Ljava/util/Map;)Lh1/f;

    move-result-object p4

    iput-object p4, p0, Lh1/e;->l:Lh1/f;

    invoke-virtual {p0}, Lh1/e;->t()V

    new-instance p4, Landroid/widget/FrameLayout;

    invoke-direct {p4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lh1/e;->b:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh1/e;->c:Landroid/view/SurfaceView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lh1/e$c;

    invoke-direct {v0, p0, p1}, Lh1/e$c;-><init>(Lh1/e;Landroid/content/Context;)V

    iput-object v0, p0, Lh1/e;->d:Lh1/e$c;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh1/e;->e:Landroid/widget/ImageView;

    const/high16 p1, -0x10000

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lh1/e;->m:I

    add-int/lit8 v1, v1, -0x28

    const/4 v2, 0x5

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lh1/e;->x()V

    new-instance p1, LY2/j;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "plugins.codingwithtashi/barcode_scanner_view_"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object p1, p0, Lh1/e;->f:LY2/j;

    new-instance p2, Lh1/b;

    invoke-direct {p2, p0}, Lh1/b;-><init>(Lh1/e;)V

    invoke-virtual {p1, p2}, LY2/j;->e(LY2/j$c;)V

    invoke-virtual {p0}, Lh1/e;->u()V

    invoke-virtual {p0}, Lh1/e;->v()V

    invoke-virtual {p0}, Lh1/e;->w()V

    return-void
.end method

.method public static synthetic g(Lh1/e;)V
    .locals 0

    invoke-virtual {p0}, Lh1/e;->r()V

    return-void
.end method

.method public static synthetic h(Lh1/e;LY2/i;LY2/j$d;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lh1/e;->s(LY2/i;LY2/j$d;)V

    return-void
.end method

.method public static synthetic i()I
    .locals 1

    sget v0, Lh1/e;->m:I

    return v0
.end method

.method public static synthetic j()I
    .locals 1

    sget v0, Lh1/e;->n:I

    return v0
.end method

.method public static synthetic k(Lh1/e;)Z
    .locals 0

    iget-boolean p0, p0, Lh1/e;->i:Z

    return p0
.end method

.method public static synthetic l(Lh1/e;)Landroid/hardware/Camera;
    .locals 0

    invoke-virtual {p0}, Lh1/e;->q()Landroid/hardware/Camera;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lh1/e;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lh1/e;->c:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static synthetic n(Lh1/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lh1/e;->k:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic o(Lh1/e;)LY2/j;
    .locals 0

    iget-object p0, p0, Lh1/e;->f:LY2/j;

    return-object p0
.end method

.method public static synthetic p(Lh1/e;)LS1/a;
    .locals 0

    iget-object p0, p0, Lh1/e;->g:LS1/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh1/e;->g:LS1/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LS1/a;->a()V

    iput-object v1, p0, Lh1/e;->g:LS1/a;

    :cond_0
    iget-object v0, p0, Lh1/e;->h:LT1/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LT1/b;->d()V

    iput-object v1, p0, Lh1/e;->h:LT1/b;

    :cond_1
    iget-object v0, p0, Lh1/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lh1/e;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final q()Landroid/hardware/Camera;
    .locals 6

    :try_start_0
    const-class v0, LS1/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/hardware/Camera;

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v0, p0, Lh1/e;->g:LS1/a;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error accessing camera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterBarcodeView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic r()V
    .locals 4

    iget-object v0, p0, Lh1/e;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sget v1, Lh1/e;->n:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iget-object v2, p0, Lh1/e;->c:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sget v3, Lh1/e;->m:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    iget-object v3, p0, Lh1/e;->e:Landroid/widget/ImageView;

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setX(F)V

    iget-object v2, p0, Lh1/e;->e:Landroid/widget/ImageView;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sget v2, Lh1/e;->n:I

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v1, p0, Lh1/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final s(LY2/i;LY2/j$d;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p1, p1, LY2/i;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "pauseScanning"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v4, "toggleFlash"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0

    :sswitch_2
    const-string v4, "resumeScanning"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    invoke-interface {p2}, LY2/j$d;->c()V

    goto :goto_1

    :pswitch_0
    iput-boolean v1, p0, Lh1/e;->i:Z

    invoke-interface {p2, v2}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Lh1/e;->y(LY2/j$d;)V

    goto :goto_1

    :pswitch_2
    iput-boolean v0, p0, Lh1/e;->i:Z

    invoke-interface {p2, v2}, LY2/j$d;->a(Ljava/lang/Object;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f207802 -> :sswitch_2
        -0x27ddc704 -> :sswitch_1
        0x5af80cc7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lh1/e;->l:Lh1/f;

    invoke-virtual {v0}, Lh1/f;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh1/e;->l:Lh1/f;

    invoke-virtual {v0}, Lh1/f;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lh1/e;->m:I

    :goto_0
    sput v0, Lh1/e;->m:I

    iget-object v0, p0, Lh1/e;->l:Lh1/f;

    invoke-virtual {v0}, Lh1/f;->b()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh1/e;->l:Lh1/f;

    invoke-virtual {v0}, Lh1/f;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    sget v0, Lh1/e;->n:I

    :goto_1
    sput v0, Lh1/e;->n:I

    return-void
.end method

.method public final u()V
    .locals 2

    new-instance v0, LT1/b$a;

    iget-object v1, p0, Lh1/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, LT1/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LT1/b$a;->b(I)LT1/b$a;

    move-result-object v0

    invoke-virtual {v0}, LT1/b$a;->a()LT1/b;

    move-result-object v0

    iput-object v0, p0, Lh1/e;->h:LT1/b;

    new-instance v1, Lh1/e$a;

    invoke-direct {v1, p0}, Lh1/e$a;-><init>(Lh1/e;)V

    invoke-virtual {v0, v1}, LS1/b;->e(LS1/b$b;)V

    return-void
.end method

.method public final v()V
    .locals 3

    new-instance v0, LS1/a$a;

    iget-object v1, p0, Lh1/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lh1/e;->h:LT1/b;

    invoke-direct {v0, v1, v2}, LS1/a$a;-><init>(Landroid/content/Context;LS1/b;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LS1/a$a;->b(Z)LS1/a$a;

    move-result-object v0

    const/16 v1, 0x640

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, LS1/a$a;->c(II)LS1/a$a;

    move-result-object v0

    invoke-virtual {v0}, LS1/a$a;->a()LS1/a;

    move-result-object v0

    iput-object v0, p0, Lh1/e;->g:LS1/a;

    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lh1/e;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lh1/e$b;

    invoke-direct {v1, p0}, Lh1/e$b;-><init>(Lh1/e;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Lh1/e;->e:Landroid/widget/ImageView;

    new-instance v1, Lh1/c;

    invoke-direct {v1, p0}, Lh1/c;-><init>(Lh1/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final y(LY2/j$d;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lh1/e;->q()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-boolean v3, p0, Lh1/e;->j:Z

    if-nez v3, :cond_0

    const-string v3, "torch"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lh1/e;->j:Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lh1/e;->j:Z

    :goto_0
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-boolean v1, p0, Lh1/e;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string v1, "CAMERA_ERROR"

    const-string v2, "Camera not available"

    invoke-interface {p1, v1, v2, v0}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error toggling flash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FLASH_ERROR"

    invoke-interface {p1, v2, v1, v0}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
