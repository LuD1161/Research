.class public final enum Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation


# static fields
.field public static final enum e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

.field public static final enum f:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

.field public static final enum g:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

.field public static final synthetic h:[Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    const-string v1, "QR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    new-instance v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    const-string v1, "BARCODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->f:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    new-instance v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    const-string v1, "DEFAULT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->g:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    invoke-static {}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->b()[Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    move-result-object v0

    sput-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->h:[Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b()[Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;
    .locals 3

    sget-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    sget-object v1, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->f:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    sget-object v2, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->g:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    filled-new-array {v0, v1, v2}, [Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;
    .locals 1

    const-class v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    return-object p0
.end method

.method public static values()[Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;
    .locals 1

    sget-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->h:[Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    invoke-virtual {v0}, [Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    return-object v0
.end method
