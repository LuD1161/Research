.class public final synthetic LH2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# instance fields
.field public final synthetic e:LH2/l;


# direct methods
.method public synthetic constructor <init>(LH2/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH2/e;->e:LH2/l;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LH2/e;->e:LH2/l;

    invoke-static {v0}, LH2/l;->l(LH2/l;)Lh3/n;

    move-result-object v0

    return-object v0
.end method
