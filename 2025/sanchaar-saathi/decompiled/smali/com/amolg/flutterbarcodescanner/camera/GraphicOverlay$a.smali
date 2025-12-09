.class public abstract Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;


# direct methods
.method public constructor <init>(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;->a:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;->a:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
