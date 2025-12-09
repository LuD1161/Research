.class public Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;


# direct methods
.method public constructor <init>(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$c;->a:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$c;-><init>(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;)V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$c;->a:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->n0(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;FF)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
