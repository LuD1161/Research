.class public final Lc0/j$c;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;-><init>(Lc0/w;Ljava/util/List;Lc0/d;LD3/I;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lc0/j;


# direct methods
.method public constructor <init>(Lc0/j;)V
    .locals 0

    iput-object p1, p0, Lc0/j$c;->f:Lc0/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lc0/n;
    .locals 1

    iget-object v0, p0, Lc0/j$c;->f:Lc0/j;

    invoke-virtual {v0}, Lc0/j;->t()Lc0/x;

    move-result-object v0

    invoke-interface {v0}, Lc0/x;->a()Lc0/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lc0/j$c;->a()Lc0/n;

    move-result-object v0

    return-object v0
.end method
