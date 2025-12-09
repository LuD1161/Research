.class public final Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;
.super Li/b;
.source "SourceFile"

# interfaces
.implements Lcom/amolg/flutterbarcodescanner/a$b;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$g;,
        Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$c;,
        Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$f;,
        Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;,
        Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;
    }
.end annotation


# static fields
.field public static M:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;

.field public static N:I


# instance fields
.field public D:Lf1/a;

.field public E:Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;

.field public F:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

.field public G:Landroid/view/ScaleGestureDetector;

.field public H:Landroid/view/GestureDetector;

.field public I:Landroid/widget/ImageView;

.field public J:Landroid/widget/ImageView;

.field public K:I

.field public L:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;->e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;

    sput-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->M:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;

    sget-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;->e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->N:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Li/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->K:I

    sget-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$g;->f:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->L:I

    return-void
.end method

.method public static synthetic n0(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;FF)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->s0(FF)Z

    move-result p0

    return p0
.end method

.method public static synthetic o0(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;)Lf1/a;
    .locals 0

    iget-object p0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->D:Lf1/a;

    return-object p0
.end method

.method public static q0()I
    .locals 3

    sget-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->M:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;

    sget-object v1, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;->f:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->M:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;

    sget-object v2, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;->g:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$d;

    if-ne v1, v2, :cond_1

    const/16 v0, 0xeef

    :cond_1
    return v0
.end method


# virtual methods
.method public i(LT1/a;)V
    .locals 2

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/amolg/flutterbarcodescanner/b;->p:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/amolg/flutterbarcodescanner/b;->e(LT1/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Barcode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    new-instance v0, LT1/a;

    invoke-direct {v0}, LT1/a;-><init>()V

    const-string v1, "-2"

    iput-object v1, v0, LT1/a;->f:Ljava/lang/String;

    iput-object v1, v0, LT1/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/amolg/flutterbarcodescanner/b;->e(LT1/a;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Le1/d;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.camera.flash"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->L:I

    sget-object v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$g;->f:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$g;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne p1, v3, :cond_0

    sget-object p1, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$g;->e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$g;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->L:I

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->I:Landroid/widget/ImageView;

    sget v0, Le1/c;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v1}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->v0(Z)V

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->L:I

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->I:Landroid/widget/ImageView;

    sget v0, Le1/c;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v2}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->v0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_0
    const-string v0, "Unable to turn on flash"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlashOnFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BarcodeCaptureActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    sget v0, Le1/d;->a:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->onBackPressed()V

    goto :goto_3

    :cond_2
    sget v0, Le1/d;->d:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->D:Lf1/a;

    invoke-virtual {p1}, Lf1/a;->q()I

    move-result p1

    iput p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->K:I

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->D:Lf1/a;

    invoke-virtual {p1}, Lf1/a;->r()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    iget v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->L:I

    sget-object v3, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$g;->e:Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$g;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iget v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->K:I

    invoke-virtual {p0, v0}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->r0(I)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->p0(ZZI)V

    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->u0()V

    :cond_5
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Li/b;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    sget p1, Le1/e;->a:I

    invoke-virtual {p0, p1}, Li/b;->setContentView(I)V

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cancelButtonText"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cameraFacingText"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Cancel"

    const-string v2, "BCActivity:onCreate()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    sget v1, Le1/d;->a:I

    invoke-virtual {p0, v1}, Li/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Le1/d;->c:I

    invoke-virtual {p0, v0}, Li/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->I:Landroid/widget/ImageView;

    sget-boolean v1, Lcom/amolg/flutterbarcodescanner/b;->o:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Le1/d;->d:I

    invoke-virtual {p0, v0}, Li/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Le1/d;->e:I

    invoke-virtual {p0, v0}, Li/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;

    iput-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->E:Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;

    sget v0, Le1/d;->b:I

    invoke-virtual {p0, v0}, Li/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    iput-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->F:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    const-string v0, "FRONT"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    iput p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->K:I

    const-string p1, "android.permission.CAMERA"

    invoke-static {p0, p1}, LH/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->K:I

    invoke-virtual {p0, v0, v2, p1}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->p0(ZZI)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->t0()V

    :goto_2
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$c;-><init>(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$a;)V

    invoke-direct {p1, p0, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->H:Landroid/view/GestureDetector;

    new-instance p1, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$f;

    invoke-direct {v0, p0, v1}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$f;-><init>(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$a;)V

    invoke-direct {p1, p0, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->G:Landroid/view/ScaleGestureDetector;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Li/b;->onDestroy()V

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->E:Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->d()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Li0/u;->onPause()V

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->E:Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->h()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Li0/u;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    :cond_0
    array-length p1, p3

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    aget p2, p3, p1

    if-nez p2, :cond_1

    const/4 p2, 0x1

    iget p3, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->K:I

    invoke-virtual {p0, p2, p1, p3}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->p0(ZZI)V

    return-void

    :cond_1
    new-instance p1, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$b;

    invoke-direct {p1, p0}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$b;-><init>(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;)V

    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "Allow permissions"

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget p3, Le1/f;->b:I

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    sget p3, Le1/f;->c:I

    invoke-virtual {p2, p3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Li0/u;->onResume()V

    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->u0()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->G:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->H:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public final p0(ZZI)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "delayMillis"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->q0()I

    move-result v2

    new-instance v3, LT1/b$a;

    invoke-direct {v3, v0}, LT1/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, LT1/b$a;->b(I)LT1/b$a;

    move-result-object v0

    invoke-virtual {v0}, LT1/b$a;->a()LT1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Barcode detector set up:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BarcodeCaptureActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Le1/b;

    iget-object v3, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->F:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    invoke-direct {v2, v3, p0, v1}, Le1/b;-><init>(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;Landroid/content/Context;I)V

    new-instance v1, LS1/e$a;

    invoke-direct {v1, v2}, LS1/e$a;-><init>(LS1/e$b;)V

    invoke-virtual {v1}, LS1/e$a;->a()LS1/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LS1/b;->e(LS1/b$b;)V

    invoke-virtual {v0}, LT1/b;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v1, Le1/f;->a:I

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    new-instance v1, Lf1/a$b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lf1/a$b;-><init>(Landroid/content/Context;LS1/b;)V

    invoke-virtual {v1, p3}, Lf1/a$b;->b(I)Lf1/a$b;

    move-result-object p3

    const/16 v0, 0x640

    const/16 v1, 0x400

    invoke-virtual {p3, v0, v1}, Lf1/a$b;->f(II)Lf1/a$b;

    move-result-object p3

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p3, v0}, Lf1/a$b;->e(F)Lf1/a$b;

    move-result-object p3

    if-eqz p2, :cond_1

    const-string p2, "torch"

    goto :goto_0

    :cond_1
    move-object p2, v2

    :goto_0
    invoke-virtual {p3, p2}, Lf1/a$b;->c(Ljava/lang/String;)Lf1/a$b;

    move-result-object p2

    if-eqz p1, :cond_2

    const-string v2, "continuous-picture"

    :cond_2
    invoke-virtual {p2, v2}, Lf1/a$b;->d(Ljava/lang/String;)Lf1/a$b;

    move-result-object p1

    iget-object p2, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->D:Lf1/a;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lf1/a;->B()V

    iget-object p2, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->D:Lf1/a;

    invoke-virtual {p2}, Lf1/a;->v()V

    :cond_3
    invoke-virtual {p1}, Lf1/a$b;->a()Lf1/a;

    move-result-object p1

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->D:Lf1/a;

    return-void
.end method

.method public final r0(I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public final s0(FF)Z
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->F:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iget-object v2, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->F:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    invoke-virtual {v2}, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->getWidthScaleFactor()F

    move-result v2

    div-float/2addr p1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->F:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    invoke-virtual {v0}, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->getHeightScaleFactor()F

    move-result v0

    div-float/2addr p2, v0

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->F:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    invoke-virtual {v0}, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->getGraphics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le1/a;

    invoke-virtual {v5}, Le1/a;->b()LT1/a;

    move-result-object v5

    invoke-virtual {v5}, LT1/a;->d()Landroid/graphics/Rect;

    move-result-object v6

    float-to-int v7, p1

    float-to-int v8, p2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, LT1/a;->d()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, p1, v6

    invoke-virtual {v5}, LT1/a;->d()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, p2, v7

    mul-float/2addr v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    cmpg-float v7, v6, v4

    if-gez v7, :cond_0

    move-object v3, v5

    move v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "Barcode"

    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    :cond_3
    return v1
.end method

.method public final t0()V
    .locals 4

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, LG/a;->q(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {p0, v1, v0}, LG/a;->p(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$a;

    invoke-direct {v0, p0, p0, v1}, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity$a;-><init>(Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;Landroid/app/Activity;[Ljava/lang/String;)V

    sget v1, Le1/d;->f:I

    invoke-virtual {p0, v1}, Li/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->F:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    sget v2, Le1/f;->d:I

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->a0(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    sget v2, Le1/f;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/snackbar/Snackbar;->d0(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->Q()V

    return-void
.end method

.method public final u0()V
    .locals 3

    invoke-static {}, Lu1/d;->m()Lu1/d;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu1/d;->f(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lu1/d;->m()Lu1/d;

    move-result-object v1

    const/16 v2, 0x2329

    invoke-virtual {v1, p0, v0, v2}, Lu1/d;->j(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->D:Lf1/a;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->E:Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;

    iget-object v2, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->F:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    invoke-virtual {v1, v0, v2}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->f(Lf1/a;Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->D:Lf1/a;

    invoke-virtual {v0}, Lf1/a;->v()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->D:Lf1/a;

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public final v0(Z)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.camera.flash"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "torch"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/BarcodeCaptureActivity;->D:Lf1/a;

    invoke-virtual {v1, p1}, Lf1/a;->y(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Unable to access flashlight as flashlight not available"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Unable to access flashlight."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
