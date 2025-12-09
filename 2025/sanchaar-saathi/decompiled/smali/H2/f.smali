.class public final synthetic LH2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# instance fields
.field public final synthetic e:LH2/l;

.field public final synthetic f:LY2/j$d;


# direct methods
.method public synthetic constructor <init>(LH2/l;LY2/j$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH2/f;->e:LH2/l;

    iput-object p2, p0, LH2/f;->f:LY2/j$d;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LH2/f;->e:LH2/l;

    iget-object v1, p0, LH2/f;->f:LY2/j$d;

    invoke-static {v0, v1}, LH2/l;->h(LH2/l;LY2/j$d;)Lh3/n;

    move-result-object v0

    return-object v0
.end method
