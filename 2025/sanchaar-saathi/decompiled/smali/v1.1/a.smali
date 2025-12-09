.class public final Lv1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv1/a$a;,
        Lv1/a$g;,
        Lv1/a$f;,
        Lv1/a$b;,
        Lv1/a$c;,
        Lv1/a$d;,
        Lv1/a$e;
    }
.end annotation


# instance fields
.field public final a:Lv1/a$a;

.field public final b:Lv1/a$g;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lv1/a$a;Lv1/a$g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lz1/o;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lv1/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lv1/a;->a:Lv1/a$a;

    iput-object p3, p0, Lv1/a;->b:Lv1/a$g;

    return-void
.end method


# virtual methods
.method public final a()Lv1/a$a;
    .locals 1

    iget-object v0, p0, Lv1/a;->a:Lv1/a$a;

    return-object v0
.end method

.method public final b()Lv1/a$c;
    .locals 1

    iget-object v0, p0, Lv1/a;->b:Lv1/a$g;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv1/a;->c:Ljava/lang/String;

    return-object v0
.end method
