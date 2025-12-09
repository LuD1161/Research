.class public final synthetic LB1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/k;


# instance fields
.field public final synthetic a:Lz1/r;


# direct methods
.method public synthetic constructor <init>(Lz1/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB1/c;->a:Lz1/r;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, LR1/g;

    check-cast p1, LB1/e;

    sget-object v0, LB1/d;->l:Lv1/a$g;

    invoke-virtual {p1}, Lz1/d;->C()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LB1/a;

    iget-object v0, p0, LB1/c;->a:Lz1/r;

    invoke-virtual {p1, v0}, LB1/a;->K(Lz1/r;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, LR1/g;->b(Ljava/lang/Object;)V

    return-void
.end method
