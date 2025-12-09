.class public final synthetic LL2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# instance fields
.field public final synthetic e:LL2/d;


# direct methods
.method public synthetic constructor <init>(LL2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL2/b;->e:LL2/d;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LL2/b;->e:LL2/d;

    invoke-static {v0}, LL2/d;->a(LL2/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
