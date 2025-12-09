.class public Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;


# direct methods
.method public constructor <init>(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$b;->c:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$b;->c:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
