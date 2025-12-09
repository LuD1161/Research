.class public Lh1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS1/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh1/e;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1/e;


# direct methods
.method public constructor <init>(Lh1/e;)V
    .locals 0

    iput-object p1, p0, Lh1/e$a;->a:Lh1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lh1/e$a;LT1/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lh1/e$a;->c(LT1/a;)V

    return-void
.end method


# virtual methods
.method public a(LS1/b$a;)V
    .locals 10

    iget-object v0, p0, Lh1/e$a;->a:Lh1/e;

    invoke-static {v0}, Lh1/e;->k(Lh1/e;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, LS1/b$a;->a()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lh1/e$a;->a:Lh1/e;

    invoke-static {v0}, Lh1/e;->l(Lh1/e;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget-object v1, p0, Lh1/e$a;->a:Lh1/e;

    invoke-static {v1}, Lh1/e;->m(Lh1/e;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lh1/e$a;->a:Lh1/e;

    invoke-static {v2}, Lh1/e;->m(Lh1/e;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget-object v0, p0, Lh1/e$a;->a:Lh1/e;

    invoke-static {v0}, Lh1/e;->m(Lh1/e;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {}, Lh1/e;->i()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lh1/e$a;->a:Lh1/e;

    invoke-static {v3}, Lh1/e;->m(Lh1/e;)Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {}, Lh1/e;->j()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v0

    int-to-float v6, v3

    invoke-static {}, Lh1/e;->i()I

    move-result v7

    add-int/2addr v0, v7

    int-to-float v0, v0

    invoke-static {}, Lh1/e;->j()I

    move-result v7

    add-int/2addr v3, v7

    int-to-float v3, v3

    invoke-direct {v4, v5, v6, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LT1/a;

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v3}, LT1/a;->d()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    invoke-virtual {v3}, LT1/a;->d()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    invoke-virtual {v3}, LT1/a;->d()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v1

    invoke-virtual {v3}, LT1/a;->d()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v4, v5}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v6, v4, v5}, Landroid/graphics/RectF;->setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v7, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v6, v5

    div-float/2addr v7, v6

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v7, v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Overlap percentage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    cmpl-float v5, v7, v5

    if-ltz v5, :cond_1

    iget-object p1, p0, Lh1/e$a;->a:Lh1/e;

    invoke-static {p1}, Lh1/e;->n(Lh1/e;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lh1/d;

    invoke-direct {v0, p0, v3}, Lh1/d;-><init>(Lh1/e$a;LT1/a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public final synthetic c(LT1/a;)V
    .locals 2

    iget-object v0, p0, Lh1/e$a;->a:Lh1/e;

    invoke-static {v0}, Lh1/e;->o(Lh1/e;)LY2/j;

    move-result-object v0

    const-string v1, "onBarcodeDetected"

    iget-object p1, p1, LT1/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, LY2/j;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
