.class public Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:[Ljava/lang/String;

.field public final synthetic e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;


# direct methods
.method public constructor <init>(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$a;->e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;

    iput-object p2, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$a;->c:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$a;->d:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$a;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$a;->d:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, LG/a;->p(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
