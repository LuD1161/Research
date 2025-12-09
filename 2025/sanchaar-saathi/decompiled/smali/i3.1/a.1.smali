.class public final synthetic Li3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# instance fields
.field public final synthetic e:Li3/b;


# direct methods
.method public synthetic constructor <init>(Li3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/a;->e:Li3/b;

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li3/a;->e:Li3/b;

    invoke-static {v0, p1}, Li3/b;->s(Li3/b;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
