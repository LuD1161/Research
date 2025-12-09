.class public Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;


# direct methods
.method public constructor <init>(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$f;->a:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$f;-><init>(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$f;->a:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;

    invoke-static {v0}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->o0(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;)Lf1/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-virtual {v0, p1}, Lf1/a;->p(F)I

    return-void
.end method
