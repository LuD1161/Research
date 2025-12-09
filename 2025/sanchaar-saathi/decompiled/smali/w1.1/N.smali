.class public final Lw1/N;
.super Lw1/n;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lw1/n$a;


# direct methods
.method public constructor <init>(Lw1/n$a;[Lu1/c;ZI)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/N;->d:Lw1/n$a;

    invoke-direct {p0, p2, p3, p4}, Lw1/n;-><init>([Lu1/c;ZI)V

    return-void
.end method


# virtual methods
.method public final b(Lv1/a$b;LR1/g;)V
    .locals 1

    iget-object v0, p0, Lw1/N;->d:Lw1/n$a;

    invoke-virtual {v0}, Lw1/n$a;->e()Lw1/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lw1/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
