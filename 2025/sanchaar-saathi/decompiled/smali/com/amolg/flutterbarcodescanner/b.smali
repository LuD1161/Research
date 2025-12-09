.class public Lcom/amolg/flutterbarcodescanner/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;
.implements LY2/l;
.implements LY2/c$d;
.implements LT2/a;
.implements LU2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amolg/flutterbarcodescanner/b$b;
    }
.end annotation


# static fields
.field public static k:LN2/g; = null

.field public static l:LY2/j$d; = null

.field public static final m:Ljava/lang/String; = "b"

.field public static n:Ljava/lang/String; = ""

.field public static o:Z = false

.field public static p:Z = false

.field public static q:Ljava/lang/String; = ""

.field public static r:I

.field public static s:LY2/c$b;


# instance fields
.field public c:Ljava/util/Map;

.field public d:LY2/c;

.field public e:LY2/j;

.field public f:LT2/a$b;

.field public g:LU2/c;

.field public h:Landroid/app/Application;

.field public i:Landroidx/lifecycle/g;

.field public j:Lcom/amolg/flutterbarcodescanner/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(LT1/a;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    iget-object v0, p0, LT1/a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amolg/flutterbarcodescanner/b;->k:LN2/g;

    new-instance v1, Lcom/amolg/flutterbarcodescanner/b$a;

    invoke-direct {v1, p0}, Lcom/amolg/flutterbarcodescanner/b$a;-><init>(LT1/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/amolg/flutterbarcodescanner/b;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBarcodeScanReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;LY2/c$b;)V
    .locals 0

    :try_start_0
    sput-object p2, Lcom/amolg/flutterbarcodescanner/b;->s:LY2/c$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    :try_start_0
    sput-object p1, Lcom/amolg/flutterbarcodescanner/b;->s:LY2/c$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/amolg/flutterbarcodescanner/b;->k:LN2/g;

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/b;->g:LU2/c;

    invoke-interface {v1, p0}, LU2/c;->f(LY2/l;)V

    iput-object v0, p0, Lcom/amolg/flutterbarcodescanner/b;->g:LU2/c;

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/b;->i:Landroidx/lifecycle/g;

    iget-object v2, p0, Lcom/amolg/flutterbarcodescanner/b;->j:Lcom/amolg/flutterbarcodescanner/b$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/g;->c(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Lcom/amolg/flutterbarcodescanner/b;->i:Landroidx/lifecycle/g;

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/b;->e:LY2/j;

    invoke-virtual {v1, v0}, LY2/j;->e(LY2/j$c;)V

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/b;->d:LY2/c;

    invoke-virtual {v1, v0}, LY2/c;->d(LY2/c$d;)V

    iput-object v0, p0, Lcom/amolg/flutterbarcodescanner/b;->e:LY2/j;

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/b;->h:Landroid/app/Application;

    iget-object v2, p0, Lcom/amolg/flutterbarcodescanner/b;->j:Lcom/amolg/flutterbarcodescanner/b$b;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v0, p0, Lcom/amolg/flutterbarcodescanner/b;->h:Landroid/app/Application;

    return-void
.end method

.method public final d(LY2/b;Landroid/app/Application;Landroid/app/Activity;LU2/c;)V
    .locals 2

    move-object v0, p3

    check-cast v0, LN2/g;

    sput-object v0, Lcom/amolg/flutterbarcodescanner/b;->k:LN2/g;

    new-instance v0, LY2/c;

    const-string v1, "flutter_barcode_scanner_receiver"

    invoke-direct {v0, p1, v1}, LY2/c;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amolg/flutterbarcodescanner/b;->d:LY2/c;

    invoke-virtual {v0, p0}, LY2/c;->d(LY2/c$d;)V

    iput-object p2, p0, Lcom/amolg/flutterbarcodescanner/b;->h:Landroid/app/Application;

    new-instance p2, LY2/j;

    const-string v0, "flutter_barcode_scanner"

    invoke-direct {p2, p1, v0}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amolg/flutterbarcodescanner/b;->e:LY2/j;

    invoke-virtual {p2, p0}, LY2/j;->e(LY2/j$c;)V

    invoke-interface {p4, p0}, LU2/c;->a(LY2/l;)V

    invoke-static {p4}, LV2/a;->a(LU2/c;)Landroidx/lifecycle/g;

    move-result-object p1

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->i:Landroidx/lifecycle/g;

    new-instance p1, Lcom/amolg/flutterbarcodescanner/b$b;

    invoke-direct {p1, p0, p3}, Lcom/amolg/flutterbarcodescanner/b$b;-><init>(Lcom/amolg/flutterbarcodescanner/b;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->j:Lcom/amolg/flutterbarcodescanner/b$b;

    iget-object p2, p0, Lcom/amolg/flutterbarcodescanner/b;->i:Landroidx/lifecycle/g;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/j;)V

    return-void
.end method

.method public final f()V
    .locals 3

    sget-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;->e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    const-string v2, "scanFormat"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "ONLY_QR_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ONLY_BARCODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;->g:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;->f:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;

    :cond_2
    :goto_0
    sput-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->M:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;

    return-void
.end method

.method public final g(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/amolg/flutterbarcodescanner/b;->k:LN2/g;

    const-class v2, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cancelButtonText"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "delayMillis"

    sget v1, Lcom/amolg/flutterbarcodescanner/b;->r:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cameraFacingText"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p2, :cond_0

    sget-object p2, Lcom/amolg/flutterbarcodescanner/b;->k:LN2/g;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/amolg/flutterbarcodescanner/b;->k:LN2/g;

    const/16 p3, 0x2329

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p2, Lcom/amolg/flutterbarcodescanner/b;->m:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startView: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0x2329

    if-ne p1, v0, :cond_2

    const-string p1, "-1"

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    :try_start_0
    const-string p2, "Barcode"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, LT1/a;

    iget-object p2, p2, LT1/a;->f:Ljava/lang/String;

    sget-object p3, Lcom/amolg/flutterbarcodescanner/b;->l:LY2/j$d;

    invoke-interface {p3, p2}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p2, Lcom/amolg/flutterbarcodescanner/b;->l:LY2/j$d;

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/amolg/flutterbarcodescanner/b;->l:LY2/j$d;

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    sput-object p1, Lcom/amolg/flutterbarcodescanner/b;->l:LY2/j$d;

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    const/4 p1, 0x1

    return p1

    :cond_1
    sget-object p2, Lcom/amolg/flutterbarcodescanner/b;->l:LY2/j$d;

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToActivity(LU2/c;)V
    .locals 3

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->g:LU2/c;

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->f:LT2/a$b;

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object p1

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/b;->f:LT2/a$b;

    invoke-virtual {v0}, LT2/a$b;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/b;->g:LU2/c;

    invoke-interface {v1}, LU2/c;->e()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/amolg/flutterbarcodescanner/b;->g:LU2/c;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amolg/flutterbarcodescanner/b;->d(LY2/b;Landroid/app/Application;Landroid/app/Activity;LU2/c;)V

    return-void
.end method

.method public onAttachedToEngine(LT2/a$b;)V
    .locals 2

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->f:LT2/a$b;

    invoke-virtual {p1}, LT2/a$b;->c()Lio/flutter/plugin/platform/j;

    move-result-object v0

    new-instance v1, Lh1/a;

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object p1

    invoke-direct {v1, p1}, Lh1/a;-><init>(LY2/b;)V

    const-string p1, "plugins.codingwithtashi/barcode_scanner_view"

    invoke-interface {v0, p1, v1}, Lio/flutter/plugin/platform/j;->a(Ljava/lang/String;Lio/flutter/plugin/platform/i;)Z

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/b;->c()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/b;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(LT2/a$b;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->f:LT2/a$b;

    return-void
.end method

.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 3

    const-string v0, "delayMillis"

    const-string v1, "scanMode"

    :try_start_0
    sput-object p2, Lcom/amolg/flutterbarcodescanner/b;->l:LY2/j$d;

    iget-object p2, p1, LY2/i;->a:Ljava/lang/String;

    const-string v2, "scanBarcode"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p1, LY2/i;->b:Ljava/lang/Object;

    instance-of v2, p2, Ljava/util/Map;

    if-eqz v2, :cond_5

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    const-string p1, "lineColor"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/amolg/flutterbarcodescanner/b;->n:Ljava/lang/String;

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    const-string p2, "isShowFlashIcon"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/amolg/flutterbarcodescanner/b;->o:Z

    sget-object p1, Lcom/amolg/flutterbarcodescanner/b;->n:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    const-string p1, "#DC143C"

    sput-object p1, Lcom/amolg/flutterbarcodescanner/b;->n:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->g:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sput p1, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->N:I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->N:I

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sput p1, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->N:I

    :goto_1
    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/b;->f()V

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    const-string p2, "isContinuousScan"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/amolg/flutterbarcodescanner/b;->p:Z

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    const-string p2, "cameraFacingText"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/amolg/flutterbarcodescanner/b;->q:Ljava/lang/String;

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/amolg/flutterbarcodescanner/b;->r:I

    :cond_4
    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/b;->c:Ljava/util/Map;

    const-string p2, "cancelButtonText"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-boolean p2, Lcom/amolg/flutterbarcodescanner/b;->p:Z

    sget-object v0, Lcom/amolg/flutterbarcodescanner/b;->q:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amolg/flutterbarcodescanner/b;->g(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plugin not passing a map as parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, LY2/i;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object p2, Lcom/amolg/flutterbarcodescanner/b;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMethodCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(LU2/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amolg/flutterbarcodescanner/b;->onAttachedToActivity(LU2/c;)V

    return-void
.end method
