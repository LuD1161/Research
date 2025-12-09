.class public final Lw1/V;
.super Lw1/D;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:Lw1/W;


# direct methods
.method public constructor <init>(Lw1/W;Landroid/app/Dialog;)V
    .locals 0

    iput-object p2, p0, Lw1/V;->a:Landroid/app/Dialog;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/V;->b:Lw1/W;

    invoke-direct {p0}, Lw1/D;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lw1/V;->b:Lw1/W;

    iget-object v0, v0, Lw1/W;->f:Lw1/Y;

    invoke-virtual {v0}, Lw1/Y;->r()V

    iget-object v0, p0, Lw1/V;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
