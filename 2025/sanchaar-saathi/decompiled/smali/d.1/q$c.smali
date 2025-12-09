.class public final Ld/q$c;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/q;-><init>(Ljava/lang/Runnable;LR/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Ld/q;


# direct methods
.method public constructor <init>(Ld/q;)V
    .locals 0

    iput-object p1, p0, Ld/q$c;->f:Ld/q;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ld/q$c;->f:Ld/q;

    invoke-virtual {v0}, Ld/q;->k()V

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ld/q$c;->a()V

    sget-object v0, Lh3/n;->a:Lh3/n;

    return-object v0
.end method
