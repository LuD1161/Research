.class public final synthetic La1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:La1/k;


# direct methods
.method public synthetic constructor <init>(La1/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/i;->a:La1/k;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La1/i;->a:La1/k;

    invoke-static {v0}, La1/k;->b(La1/k;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
