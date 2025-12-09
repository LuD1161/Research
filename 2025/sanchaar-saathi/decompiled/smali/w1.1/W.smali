.class public final Lw1/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lw1/U;

.field public final synthetic f:Lw1/Y;


# direct methods
.method public constructor <init>(Lw1/Y;Lw1/U;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/W;->f:Lw1/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw1/W;->e:Lw1/U;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v5, p0, Lw1/W;->f:Lw1/Y;

    iget-boolean v0, v5, Lw1/Y;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lw1/W;->e:Lw1/U;

    invoke-virtual {v0}, Lw1/U;->b()Lu1/a;

    move-result-object v1

    invoke-virtual {v1}, Lu1/a;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v5, Lw1/g;->c:Lw1/h;

    invoke-virtual {v5}, Lw1/g;->b()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1}, Lu1/a;->g()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v1}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Lw1/U;->a()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v3, v1, v0, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v2, v0, v1}, Lw1/h;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    invoke-virtual {v5}, Lw1/g;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1}, Lu1/a;->d()I

    move-result v3

    iget-object v4, v5, Lw1/Y;->g:Lu1/d;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v3, v6}, Lu1/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v5}, Lw1/g;->b()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v5, Lw1/g;->c:Lw1/h;

    invoke-virtual {v1}, Lu1/a;->d()I

    move-result v6

    const/4 v7, 0x2

    move-object v0, v4

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lu1/d;->q(Landroid/app/Activity;Lw1/h;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    :cond_2
    invoke-virtual {v1}, Lu1/a;->d()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    invoke-virtual {v5}, Lw1/g;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Lu1/d;->t(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v5}, Lw1/g;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lw1/V;

    invoke-direct {v2, p0, v0}, Lw1/V;-><init>(Lw1/W;Landroid/app/Dialog;)V

    invoke-virtual {v4, v1, v2}, Lu1/d;->u(Landroid/content/Context;Lw1/D;)Lw1/E;

    return-void

    :cond_3
    invoke-virtual {v0}, Lw1/U;->a()I

    move-result v0

    invoke-virtual {v5, v1, v0}, Lw1/Y;->s(Lu1/a;I)V

    return-void
.end method
