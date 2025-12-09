.class public Li0/n;
.super Li0/p;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public g0:Landroid/os/Handler;

.field public h0:Ljava/lang/Runnable;

.field public i0:Landroid/content/DialogInterface$OnCancelListener;

.field public j0:Landroid/content/DialogInterface$OnDismissListener;

.field public k0:I

.field public l0:I

.field public m0:Z

.field public n0:Z

.field public o0:I

.field public p0:Z

.field public q0:Landroidx/lifecycle/s;

.field public r0:Landroid/app/Dialog;

.field public s0:Z

.field public t0:Z

.field public u0:Z

.field public v0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Li0/p;-><init>()V

    new-instance v0, Li0/n$a;

    invoke-direct {v0, p0}, Li0/n$a;-><init>(Li0/n;)V

    iput-object v0, p0, Li0/n;->h0:Ljava/lang/Runnable;

    new-instance v0, Li0/n$b;

    invoke-direct {v0, p0}, Li0/n$b;-><init>(Li0/n;)V

    iput-object v0, p0, Li0/n;->i0:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Li0/n$c;

    invoke-direct {v0, p0}, Li0/n$c;-><init>(Li0/n;)V

    iput-object v0, p0, Li0/n;->j0:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput v0, p0, Li0/n;->k0:I

    iput v0, p0, Li0/n;->l0:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Li0/n;->m0:Z

    iput-boolean v1, p0, Li0/n;->n0:Z

    const/4 v1, -0x1

    iput v1, p0, Li0/n;->o0:I

    new-instance v1, Li0/n$d;

    invoke-direct {v1, p0}, Li0/n$d;-><init>(Li0/n;)V

    iput-object v1, p0, Li0/n;->q0:Landroidx/lifecycle/s;

    iput-boolean v0, p0, Li0/n;->v0:Z

    return-void
.end method

.method public static synthetic E1(Li0/n;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Li0/n;->r0:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic F1(Li0/n;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    iget-object p0, p0, Li0/n;->j0:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public static synthetic G1(Li0/n;)Z
    .locals 0

    iget-boolean p0, p0, Li0/n;->n0:Z

    return p0
.end method


# virtual methods
.method public final H1(ZZZ)V
    .locals 3

    iget-boolean v0, p0, Li0/n;->t0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/n;->t0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Li0/n;->u0:Z

    iget-object v1, p0, Li0/n;->r0:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Li0/n;->r0:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, Li0/n;->g0:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Li0/n;->r0:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Li0/n;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Li0/n;->g0:Landroid/os/Handler;

    iget-object v1, p0, Li0/n;->h0:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iput-boolean v0, p0, Li0/n;->s0:Z

    iget p2, p0, Li0/n;->o0:I

    if-ltz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Li0/p;->H()Li0/I;

    move-result-object p1

    iget p2, p0, Li0/n;->o0:I

    invoke-virtual {p1, p2, v0}, Li0/I;->c1(II)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Li0/p;->H()Li0/I;

    move-result-object p2

    iget p3, p0, Li0/n;->o0:I

    invoke-virtual {p2, p3, v0, p1}, Li0/I;->a1(IIZ)V

    :goto_1
    const/4 p1, -0x1

    iput p1, p0, Li0/n;->o0:I

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Li0/p;->H()Li0/I;

    move-result-object p2

    invoke-virtual {p2}, Li0/I;->n()Li0/Q;

    move-result-object p2

    invoke-virtual {p2, v0}, Li0/Q;->o(Z)Li0/Q;

    invoke-virtual {p2, p0}, Li0/Q;->l(Li0/p;)Li0/Q;

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Li0/Q;->h()V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p2}, Li0/Q;->g()I

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Li0/Q;->f()I

    :goto_2
    return-void
.end method

.method public I1()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Li0/n;->r0:Landroid/app/Dialog;

    return-object v0
.end method

.method public J1()I
    .locals 1

    iget v0, p0, Li0/n;->l0:I

    return v0
.end method

.method public K1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const/4 p1, 0x3

    invoke-static {p1}, Li0/I;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateDialog called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Ld/l;

    invoke-virtual {p0}, Li0/p;->q1()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Li0/n;->J1()I

    move-result v1

    invoke-direct {p1, v0, v1}, Ld/l;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public L0(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Li0/p;->L0(Landroid/os/Bundle;)V

    iget-object v0, p0, Li0/n;->r0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:dialogShowing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Li0/n;->k0:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Li0/n;->l0:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Li0/n;->m0:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Li0/n;->n0:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Li0/n;->o0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public L1(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Li0/n;->r0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public M0()V
    .locals 2

    invoke-super {p0}, Li0/p;->M0()V

    iget-object v0, p0, Li0/n;->r0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Li0/n;->s0:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Li0/n;->r0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/J;->a(Landroid/view/View;Landroidx/lifecycle/k;)V

    invoke-static {v0, p0}, Landroidx/lifecycle/K;->a(Landroid/view/View;Landroidx/lifecycle/I;)V

    invoke-static {v0, p0}, Lx0/g;->a(Landroid/view/View;Lx0/f;)V

    :cond_0
    return-void
.end method

.method public M1()Z
    .locals 1

    iget-boolean v0, p0, Li0/n;->v0:Z

    return v0
.end method

.method public N0()V
    .locals 1

    invoke-super {p0}, Li0/p;->N0()V

    iget-object v0, p0, Li0/n;->r0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public final N1(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Li0/n;->n0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Li0/n;->v0:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Li0/n;->p0:Z

    invoke-virtual {p0, p1}, Li0/n;->K1(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Li0/n;->r0:Landroid/app/Dialog;

    iget-boolean v2, p0, Li0/n;->n0:Z

    if-eqz v2, :cond_2

    iget v2, p0, Li0/n;->k0:I

    invoke-virtual {p0, p1, v2}, Li0/n;->Q1(Landroid/app/Dialog;I)V

    invoke-virtual {p0}, Li0/p;->u()Landroid/content/Context;

    move-result-object p1

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Li0/n;->r0:Landroid/app/Dialog;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, Li0/n;->r0:Landroid/app/Dialog;

    iget-boolean v2, p0, Li0/n;->m0:Z

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Li0/n;->r0:Landroid/app/Dialog;

    iget-object v2, p0, Li0/n;->i0:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Li0/n;->r0:Landroid/app/Dialog;

    iget-object v2, p0, Li0/n;->j0:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-boolean v1, p0, Li0/n;->v0:Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Li0/n;->r0:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-boolean v0, p0, Li0/n;->p0:Z

    goto :goto_3

    :goto_2
    iput-boolean v0, p0, Li0/n;->p0:Z

    throw p1

    :cond_3
    :goto_3
    return-void
.end method

.method public final O1()Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Li0/n;->I1()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a Dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public P0(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Li0/p;->P0(Landroid/os/Bundle;)V

    iget-object v0, p0, Li0/n;->r0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Li0/n;->r0:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public P1(Z)V
    .locals 0

    iput-boolean p1, p0, Li0/n;->n0:Z

    return-void
.end method

.method public Q1(Landroid/app/Dialog;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v1, 0x18

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    return-void
.end method

.method public R1(Li0/I;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/n;->t0:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/n;->u0:Z

    invoke-virtual {p1}, Li0/I;->n()Li0/Q;

    move-result-object p1

    invoke-virtual {p1, v0}, Li0/Q;->o(Z)Li0/Q;

    invoke-virtual {p1, p0, p2}, Li0/Q;->d(Li0/p;Ljava/lang/String;)Li0/Q;

    invoke-virtual {p1}, Li0/Q;->f()I

    return-void
.end method

.method public W0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Li0/p;->W0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object p1, p0, Li0/p;->L:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Li0/n;->r0:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android:savedDialogState"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Li0/n;->r0:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public g()Li0/w;
    .locals 2

    invoke-super {p0}, Li0/p;->g()Li0/w;

    move-result-object v0

    new-instance v1, Li0/n$e;

    invoke-direct {v1, p0, v0}, Li0/n$e;-><init>(Li0/n;Li0/w;)V

    return-object v1
.end method

.method public j0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Li0/p;->j0(Landroid/os/Bundle;)V

    return-void
.end method

.method public m0(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Li0/p;->m0(Landroid/content/Context;)V

    invoke-virtual {p0}, Li0/p;->W()Landroidx/lifecycle/p;

    move-result-object p1

    iget-object v0, p0, Li0/n;->q0:Landroidx/lifecycle/s;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/s;)V

    iget-boolean p1, p0, Li0/n;->u0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Li0/n;->t0:Z

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean p1, p0, Li0/n;->s0:Z

    if-nez p1, :cond_1

    const/4 p1, 0x3

    invoke-static {p1}, Li0/I;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDismiss called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, p1}, Li0/n;->H1(ZZZ)V

    :cond_1
    return-void
.end method

.method public p0(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Li0/p;->p0(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Li0/n;->g0:Landroid/os/Handler;

    iget v0, p0, Li0/p;->B:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Li0/n;->n0:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Li0/n;->k0:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Li0/n;->l0:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Li0/n;->m0:Z

    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Li0/n;->n0:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Li0/n;->n0:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Li0/n;->o0:I

    :cond_1
    return-void
.end method

.method public w0()V
    .locals 2

    invoke-super {p0}, Li0/p;->w0()V

    iget-object v0, p0, Li0/n;->r0:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Li0/n;->s0:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Li0/n;->r0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v0, p0, Li0/n;->t0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Li0/n;->r0:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Li0/n;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v1, p0, Li0/n;->r0:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li0/n;->v0:Z

    :cond_1
    return-void
.end method

.method public x0()V
    .locals 2

    invoke-super {p0}, Li0/p;->x0()V

    iget-boolean v0, p0, Li0/n;->u0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Li0/n;->t0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Li0/n;->t0:Z

    :cond_0
    invoke-virtual {p0}, Li0/p;->W()Landroidx/lifecycle/p;

    move-result-object v0

    iget-object v1, p0, Li0/n;->q0:Landroidx/lifecycle/s;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->i(Landroidx/lifecycle/s;)V

    return-void
.end method

.method public y0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 4

    invoke-super {p0, p1}, Li0/p;->y0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Li0/n;->n0:Z

    const/4 v2, 0x2

    const-string v3, "FragmentManager"

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Li0/n;->p0:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Li0/n;->N1(Landroid/os/Bundle;)V

    invoke-static {v2}, Li0/I;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get layout inflater for DialogFragment "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from dialog context"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Li0/n;->r0:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    invoke-static {v2}, Li0/I;->I0(I)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting layout inflater for DialogFragment "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Li0/n;->n0:Z

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowsDialog = false: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCreatingDialog = true: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-object v0
.end method
