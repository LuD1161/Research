.class public Ld/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ld/h;


# direct methods
.method public constructor <init>(Ld/h;)V
    .locals 0

    iput-object p1, p0, Ld/h$c;->c:Ld/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/lifecycle/k;Landroidx/lifecycle/g$a;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Ld/h$c;->c:Ld/h;

    iget-object p1, p1, Ld/h;->e:Le/a;

    invoke-virtual {p1}, Le/a;->b()V

    iget-object p1, p0, Ld/h$c;->c:Ld/h;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ld/h$c;->c:Ld/h;

    invoke-virtual {p1}, Ld/h;->t()Landroidx/lifecycle/H;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/H;->a()V

    :cond_0
    iget-object p1, p0, Ld/h$c;->c:Ld/h;

    iget-object p1, p1, Ld/h;->k:Ld/h$j;

    invoke-interface {p1}, Ld/h$j;->f()V

    :cond_1
    return-void
.end method
