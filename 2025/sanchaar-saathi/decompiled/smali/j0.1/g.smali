.class public abstract Lj0/g;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final e:Li0/p;


# direct methods
.method public constructor <init>(Li0/p;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lj0/g;->e:Li0/p;

    return-void
.end method


# virtual methods
.method public final a()Li0/p;
    .locals 1

    iget-object v0, p0, Lj0/g;->e:Li0/p;

    return-object v0
.end method
