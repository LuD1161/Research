.class public Lcom/amolg/flutterbarcodescanner/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amolg/flutterbarcodescanner/a;->i(LT1/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:LT1/a;

.field public final synthetic f:Lcom/amolg/flutterbarcodescanner/a;


# direct methods
.method public constructor <init>(Lcom/amolg/flutterbarcodescanner/a;LT1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/a$a;->f:Lcom/amolg/flutterbarcodescanner/a;

    iput-object p2, p0, Lcom/amolg/flutterbarcodescanner/a$a;->e:LT1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/a$a;->f:Lcom/amolg/flutterbarcodescanner/a;

    invoke-static {v0}, Lcom/amolg/flutterbarcodescanner/a;->e(Lcom/amolg/flutterbarcodescanner/a;)Lcom/amolg/flutterbarcodescanner/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/a$a;->e:LT1/a;

    invoke-interface {v0, v1}, Lcom/amolg/flutterbarcodescanner/a$b;->i(LT1/a;)V

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/a$a;->f:Lcom/amolg/flutterbarcodescanner/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amolg/flutterbarcodescanner/a;->f(Lcom/amolg/flutterbarcodescanner/a;Z)Z

    const-string v0, "BarcodeGraphicTracker"

    const-string v1, "Delay completed, barcode processed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
