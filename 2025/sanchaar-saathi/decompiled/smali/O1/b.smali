.class public abstract LO1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lv1/a$g;

.field public static final b:Lv1/a$a;

.field public static final c:Lv1/a;

.field public static final d:LO1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lv1/a$g;

    invoke-direct {v0}, Lv1/a$g;-><init>()V

    sput-object v0, LO1/b;->a:Lv1/a$g;

    new-instance v1, LO1/h;

    invoke-direct {v1}, LO1/h;-><init>()V

    sput-object v1, LO1/b;->b:Lv1/a$a;

    new-instance v2, Lv1/a;

    const-string v3, "Phenotype.API"

    invoke-direct {v2, v3, v1, v0}, Lv1/a;-><init>(Ljava/lang/String;Lv1/a$a;Lv1/a$g;)V

    sput-object v2, LO1/b;->c:Lv1/a;

    new-instance v0, LM1/d;

    invoke-direct {v0}, LM1/d;-><init>()V

    sput-object v0, LO1/b;->d:LO1/i;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "content://com.google.android.gms.phenotype/"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
